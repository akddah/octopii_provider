import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // private constructor as I don't want to allow creating an instance of this class itself.
  // Private static instance
  static final SharedPrefHelper _instance = SharedPrefHelper._internal();

  // FlutterSecureStorage instance
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  // Factory constructor to return the singleton instance
  factory SharedPrefHelper() => _instance;

  // Private constructor
  SharedPrefHelper._internal();

  /// Removes a value from SharedPreferences with given [key].
  Future<void> removeData(String key) async {
    AppLogger().info('SharedPrefHelper: data with key: $key has been removed');
    await sl<SharedPreferences>().remove(key);
  }

  /// Removes all keys and values in the SharedPreferences
  Future<bool> clearAllData() async {
    AppLogger().info('SharedPrefHelper: all data has been cleared');
    return sl<SharedPreferences>().clear();
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  Future<void> setData(String key, dynamic value) async {
    AppLogger()
        .info('SharedPrefHelper: setData with key: $key and value: $value');
    switch (value.runtimeType) {
      case String:
        await sl<SharedPreferences>().setString(key, value as String);
      case int:
        await sl<SharedPreferences>().setInt(key, value as int);
      case bool:
        await sl<SharedPreferences>().setBool(key, value as bool);
      case double:
        await sl<SharedPreferences>().setDouble(key, value as double);
      default:
        throw UnsupportedError('Unsupported data type for SharedPreferences.');
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
  bool getBool(String key, {bool fallback = false}) {
    AppLogger().info('SharedPrefHelper: getBool with key: $key');
    return sl<SharedPreferences>().getBool(key) ?? fallback;
  }

  /// Gets a double value from SharedPreferences with given [key].
  double getDouble(String key, {double fallback = 0.0}) {
    AppLogger().info('SharedPrefHelper: getDouble with key: $key');
    return sl<SharedPreferences>().getDouble(key) ?? fallback;
  }

  /// Gets an int value from SharedPreferences with given [key].
  int getInt(String key, {int fallback = 0}) {
    AppLogger().info('SharedPrefHelper: getInt with key: $key');
    return sl<SharedPreferences>().getInt(key) ?? fallback;
  }

  /// Gets an String value from SharedPreferences with given [key].
  String getString(String key, {String fallback = ''}) {
    AppLogger().info('SharedPrefHelper: getString with key: $key');
    return sl<SharedPreferences>().getString(key) ?? fallback;
  }

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  Future<void> setSecuredToken(String key,String value) async {
    AppLogger().info(
      'FlutterSecureStorage: setSecuredString with Key $key value: $value',
    );
    await _secureStorage.write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  Future<String?> getSecuredToken(String key) async {
    return _secureStorage.read(key: key);
  }

  /// Removes all keys and values in the FlutterSecureStorage
  Future<void> clearAllSecuredData() async {
    AppLogger().info('FlutterSecureStorage: all data has been cleared');
    await _secureStorage.deleteAll();
  }

  ///Start region Of User
  /// Set And Get Methods For Handling Driver Cached Data
  Future<void> setUser(LoginResponseModel? loginResponseModel) async {
    final String userJson = json.encode(loginResponseModel?.toJson());
    await sl<SharedPreferences>()
        .setString(DatabaseConstants.userDataKey, userJson);
  }

  LoginResponseModel? getUser() {
    final String? userJson =
        sl<SharedPreferences>().getString(DatabaseConstants.userDataKey);
    if (userJson == null) return null;
    final dynamic userMap = json.decode(userJson);
    return LoginResponseModel.fromJson(userMap as Map<String, dynamic>);
  }

  Future<void> deleteUser() async {
    await sl<SharedPreferences>().remove(DatabaseConstants.userDataKey);
  }

  ///End region Of User
}
