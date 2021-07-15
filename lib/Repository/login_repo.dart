import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:next/models/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    
    String url =
        "http://osamahamdy-001-site1.htempurl.com/api/Authentication/OwnerAuthenticate";
    var map = new Map<String, dynamic>();
    map['Email'] = 'osamahamdy3@outlook.com';
    map['Password'] = 'osamahamdy12';

    Dio().post(url, data: map).then((value) => {
          if (value.statusCode == 200 || value.statusCode == 400)
            {
              LoginResponseModel.fromJson(
                json.decode(value.data),
              )
            }
          else
            {throw Exception('Failed to load data!')}
        });
  }
}
