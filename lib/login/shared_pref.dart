import 'dart:convert';

import 'package:datingapp/login/login_model.dart';
import 'package:datingapp/login/raw_data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginPageData {
  Future saveJsonData(jsonData) async {
    final prefs = await SharedPreferences.getInstance();
    var saveData = jsonEncode(jsonData);
    await prefs.setString('jsonData', saveData);
  }

  Future<LoginModel> getJsonData() async {
    final prefs = await SharedPreferences.getInstance();
    var temp = prefs.getString('jsonData') ?? jsonEncode(defaultData);
    debugPrint('Data received: $temp');
    var data = LoginModel.fromMap(jsonDecode(temp.toString()));
    debugPrint('Name: ${(data.name.toString())}');
    debugPrint('Age: ${(data.age.toString())}');
    debugPrint('Organization: ${(data.organization.toString())}');
    debugPrint('Club: ${(data.club.toString())}');
    return data;
  }
}