from googleapiclient.discovery import build # type: ignore
from googleapiclient.http import MediaFileUpload # type: ignore
from google.oauth2 import service_account # type: ignore
import os

# Load credentials
SCOPES = ['https://www.googleapis.com/auth/drive.file']
SERVICE_ACCOUNT_FILE = 'credentials.json'

creds = service_account.Credentials.from_service_account_file(SERVICE_ACCOUNT_FILE, scopes=SCOPES)
drive_service = build('drive', 'v3', credentials=creds)

# Define file details
APK_PATH = os.getenv('APK_PATH')
FOLDER_ID = "1Wko8gHsCXGr8-jhWGlqVaSHXoVLk-S3P"  # Your Google Drive folder ID
FILE_NAME = 'octopii-provider-stg.apk'  # Name of the APK file

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