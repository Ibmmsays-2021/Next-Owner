import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:next/Screens/hsitory.dart';

import 'package:next/models/resesrvation.dart';

class ReservationRow extends StatelessWidget {
  final List<Resrvation> userRservation = [
    Resrvation("Ibrahim Muhammed", "01115691639", "Taxi EL tayer", "10", "12",
        "assets/images/c7d6b24fa68e7da3491ea06b6af90fc1.jpg"),
    Resrvation("osama hamdy", "0110084373", "Taxi EL tayer", "12", "1",
        "assets/images/images2.jpg"),
    Resrvation("Ahmed Na42t", "0102356897", "El 8aba", "9", "11",
        "assets/images/images.jpg"),
    Resrvation("Anas Mohamed", "015545573", "Taxi EL tayer", "12", "2",
        "assets/images/image_by_url.jpg"),
  ];
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userRservation.length,
        itemBuilder: (_, index) {
          return Container(
            height: 160.0,
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 1000.0,
                  margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 5.0))
                    ],
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0, left: 117.0),
                    constraints: BoxConstraints.expand(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(userRservation[index].playgroundName,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0)),
                        Container(
                            color: const Color(0xFF00C6FF),
                            width: 24.0,
                            height: 1.0,
                            margin: const EdgeInsets.symmetric(vertical: 2)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            40,
                            0,
                            0,
                          ),
                          child: Row(
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => History(),
                                    ),
                                  );
                                },
                                child: const Text('Current'),
                                style: ElevatedButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 16),
                                    primary: Theme.of(context).accentColor),
                              ),
                              Container(width: 20.0),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => History(),
                                    ),
                                  );
                                },
                                child: const Text('History'),
                                style: ElevatedButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 16),
                                    primary: Theme.of(context).accentColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: FractionalOffset(0.0, 0.5),
                  margin: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        userRservation[index].image,
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
