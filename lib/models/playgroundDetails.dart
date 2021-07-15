// // To parse this JSON data, do
// //
// //     final PlaygroundDetails = PlaygroundFromJson(jsonString);

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

// List<Playground> playgroundFromJson(String str) => List<Playground>.from(json.decode(str).map((x) => Playground.fromJson(x)));

// String playgroundToJson(List<Playground> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlaygroundDetails {
  PlaygroundDetails({
    this.id,
    this.name,
    this.location,
    this.image,
    this.from,
    this.to,
    this.priceEvening,
    this.priceMorning,
    this.hasBall,
    this.hasWater,
    this.hasGarag,
    this.hasLoacker,
    this.hasShower,
    this.hasToilet,
    this.rating,
    this.type,
    this.status,
    this.reservedHours,
  });

  String id;
  String name;
  String location;
  List<String> image;
  String from;
  String to;
  int priceEvening;
  int priceMorning;
  bool hasBall;
  bool hasWater;
  bool hasGarag;
  bool hasLoacker;
  bool hasShower;
  bool hasToilet;
  int rating;
  dynamic type;
  String status;
  dynamic reservedHours;

  factory PlaygroundDetails.fromJson(Map<String, dynamic> json) =>
      PlaygroundDetails(
        id: json["id"],
        name: json["name"],
        location: json["location"],
        image: List<String>.from(json["image"].map((x) => x)),
        from: json["from"],
        to: json["to"],
        priceEvening: json["priceEvening"],
        priceMorning: json["priceMorning"],
        hasBall: json["hasBall"],
        hasWater: json["hasWater"],
        hasGarag: json["hasGarag"],
        hasLoacker: json["hasLoacker"],
        hasShower: json["hasShower"],
        hasToilet: json["hasToilet"],
        rating: json["rating"],
        type: json["type"],
        status: json["status"],
        reservedHours: json["reservedHours"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "location": location,
        "image": List<dynamic>.from(image.map((x) => x)),
        "from": from,
        "to": to,
        "priceEvening": priceEvening,
        "priceMorning": priceMorning,
        "hasBall": hasBall,
        "hasWater": hasWater,
        "hasGarag": hasGarag,
        "hasLoacker": hasLoacker,
        "hasShower": hasShower,
        "hasToilet": hasToilet,
        "rating": rating,
        "type": type,
        "status": status,
        "reservedHours": reservedHours,
      };
}
