// // To parse this JSON data, do
// //
// //     final Playground = PlaygroundFromJson(jsonString);

// import 'dart:convert';

// class Playground {
//   String title;

//   Playground({this.title});

//   Playground.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//   }
// }

// To parse this JSON data, do
//
//     final playground = playgroundFromJson(jsonString);

import 'dart:convert';

class Playground {
  Playground({
    this.id,
    this.name,
    // this.image,
  });

  String id;
  String name;

  // List<String> image;

  factory Playground.fromJson(Map<String, dynamic> json) => Playground(
        id: json["id"],
        name: json["name"],
        // image: List<String>.from(json["image"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        // "image": List<dynamic>.from(image.map((x) => x)),
      };
}
