import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:next/models/playground.dart';

class PlaygroundRepository {
  Future<List<Playground>> fetchPlayground() async {
    List<Playground> playgrounds = [];
    var response = await http.get(Uri.parse(
        "http://osamahamdy-001-site1.htempurl.com/api/PlayGround/GetAllPlayGrounds"));

    if (response.statusCode == 200) {
      final List parsedList = json.decode(response.body);

      List<Playground> list =
          parsedList.map((val) => Playground.fromJson(val)).toList();

      return list;
    }
  }
}
