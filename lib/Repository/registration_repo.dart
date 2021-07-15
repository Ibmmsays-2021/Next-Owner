import 'dart:convert';

import 'package:http/http.dart' as http;

class Register {
  String baseURL = "http://osamahamdy-001-site1.htempurl.com/api/";

  register(
      String email, String password, String neighborhoodId, String name) async {
    var result =
        await http.post(Uri.parse(baseURL + "Registration/OwnerRegistration"),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=utf-8',
            },
            body: jsonEncode({
              "Name": "osamaaaa",
              "NeighborhoodId": neighborhoodId,
              "Email": "e@e.com",
              "Password": "oooooo12",
              "RePassword": "oooooo12"
            }));
    print(result);
    var respondBody = jsonDecode(result.body);
    print(respondBody);
  }
}
