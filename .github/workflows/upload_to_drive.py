from googleapiclient.discovery import build # type: ignore
from googleapiclient.http import MediaFileUpload # type: ignore
from google.oauth2 import service_account # type: ignore
import os
import requests # type: ignore

# Load credentials
SCOPES = ['https://www.googleapis.com/auth/drive.file']
SERVICE_ACCOUNT_FILE = 'credentials.json'

creds = service_account.Credentials.from_service_account_file(SERVICE_ACCOUNT_FILE, scopes=SCOPES)
drive_service = build('drive', 'v3', credentials=creds)

# Define file details
APK_PATH = os.getenv('APK_PATH')
FOLDER_ID = "1Wko8gHsCXGr8-jhWGlqVaSHXoVLk-S3P"  # Your Google Drive folder ID
BOT_TOKEN = "8318999191:AAFkvTL6CXts_A0GJqb3xrbTFTPCUsF48BA"
CHAT_ID = 6676414733
commit_message = os.environ.get("COMMIT_NAME", "No commit message found")
BRANCH_NAME = os.getenv('GITHUB_REF_NAME', 'main')  # Default to 'stg' if not set

if BRANCH_NAME == 'main':
    FILE_NAME = 'provider-octopii-prod.apk'
else:
    FILE_NAME = 'provider-octopii-stg.apk'

# Step 1: Search for an existing file with the same name in the folder
query = f"name='{FILE_NAME}' and '{FOLDER_ID}' in parents and trashed=false"
response = drive_service.files().list(q=query, fields="files(id)").execute()
existing_files = response.get('files', [])

# Step 2: If a file exists, delete it
for file in existing_files:
    file_id = file['id']
    drive_service.files().delete(fileId=file_id).execute()
    print(f"🗑 Deleted existing file: {file_id}")

# Step 3: Upload the new file
file_metadata = {
    'name': FILE_NAME,
    'parents': [FOLDER_ID]
}
media = MediaFileUpload(APK_PATH, mimetype='application/vnd.android.package-archive')

uploaded_file = drive_service.files().create(body=file_metadata, media_body=media, fields='id').execute()
print(f"✅ File uploaded successfully, ID: {uploaded_file.get('id')}")


file_id = uploaded_file.get('id')
print(f"✅ File uploaded successfully. ID: {file_id}")

# جعل الملف متاح للجميع (Public)
drive_service.permissions().create(fileId=file_id, body={
    'type': 'anyone',
    'role': 'reader',
}).execute()

# # رابط التحميل العام
public_link = f"https://drive.google.com/uc?id={file_id}&export=download"
# print(f"🔗 Public Link: {public_link}")

# إرسال رسالة واتساب باستخدام CallMeBot
# message = f"✅ APK uploaded: FILE_NAME\nDownload: public_link\nCommit Message:{commit_message}"
message = f"✅ APK uploaded: {FILE_NAME}\nDownload: {public_link}\nCommit Message: {commit_message}"
print(f"{message}")
url = f"https://api.telegram.org/bot{BOT_TOKEN}/sendMessage"
payload = {
    "chat_id": CHAT_ID,
    "text": message
}
response = requests.post(url, data=payload)
print(f"📩 WhatsApp message sent: {response.status_code} - {response.text}")

