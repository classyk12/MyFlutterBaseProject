//USE THIS FOR LOCAL STORAGE

// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';

// class Storage {
//   //this retrieves the token from local storage
//   static Future<dynamic> read(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     final value = prefs.getString(key);
//     if (value != null) {
//       return jsonDecode(value);
//     }
//     return null;
//   }

//   static Future reloadStorage() async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.reload();
//   }

// //this saves decoded token into local storage
//   static Future save(String key, dynamic value) async {
//     if (value != null) {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString(key, jsonEncode(value));
//     }
//   }

// //this removes a specified local storage value from storage
//   static Future<bool> remove(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     final value = await prefs.remove(key);
//     return value;
//   }

// //this clears all local storage values
//   static Future<bool> clearAll() async {
//     final prefs = await SharedPreferences.getInstance();
//     final value = await prefs.clear();
//     return value;
//   }
// }
