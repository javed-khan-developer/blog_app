import 'package:auto_route/auto_route.dart';
import 'package:blog_app/presentation/routes/router_imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static late SharedPreferences _prefs;

  UserPreference._();

  // ----------------- SETTER METHODS --------------------------------
  static initUserPref() async => _prefs = await SharedPreferences.getInstance();

  static storeString(String key, String value) async =>
      await _prefs.setString(key, value);

  static storeInt(String key, int value) async =>
      await _prefs.setInt(key, value);

  static storeBool(String key, bool value) async =>
      await _prefs.setBool(key, value);

  static storeDouble(String key, double value) async =>
      await _prefs.setDouble(key, value);

  static storeStringList(String key, List<String> value) async =>
      await _prefs.setStringList(key, value);

  // ------------------ GETTER METHODS -------------------------------

  static getString(String key) async => _prefs.getString(key);

  static getInt(String key) async => _prefs.getInt(key);

  static getBool(String key) async => _prefs.getBool(key);

  static getDouble(String key) async => _prefs.getDouble(key);

  static getStringList(String key) async => _prefs.getStringList(key);

  // ------------------- DELETE METHODS ---------------------------
  static removeKey(String key) async => _prefs.remove(key);

  static clearALl(BuildContext context) async {
    _prefs.clear();
    AutoRouter.of(context).pushAndPopUntil(
      OnboardRoute(),
      predicate: (route) => false,
    );
  }
}
