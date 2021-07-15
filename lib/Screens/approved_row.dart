import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:next/Screens/reservation.dart';

import 'package:next/models/resesrvation.dart';

class ApprovedRow extends StatelessWidget {
  DateTime now = DateTime.now();
  final List<Resrvation> userRservation = [
    Resrvation("Ibrahim Muhammed", "01115691639", "Taxi EL tayer", "10", "12",
        "assets/images/hima.png"),
    Resrvation("osama hamdy", "0110084373", "Taxi EL tayer", "12", "1",
        "assets/images/test.jpg"),
    Resrvation("Ahmed Na42t", "0102356897", "El 8aba", "9", "11",
        "assets/images/15894991_1153279941452579_9181159485935293074_n.jpg"),
    Resrvation("Anas Mohamed", "015545573", "Taxi EL tayer", "12", "2",
        "assets/images/as.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userRservation.length,
        itemBuilder: (_, index) {
          return Container(
            height: 160.0,
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 4.0,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 1000.0,
                  margin: const EdgeInsets.only(left: 48.0, right: 10.0),
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
                    margin: const EdgeInsets.only(top: 10.0, left: 62.0),
                    constraints: BoxConstraints.expand(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(userRservation[index].username,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0)),
                        Text(userRservation[index].playgroundName,
                            style: TextStyle(color: Colors.white)),
                        Text(userRservation[index].phoneNo,
                            style: TextStyle(color: Colors.white)),
                        Text(
                          DateFormat('yyyy-MM-dd').format(now),
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                            color: Theme.of(context).accentColor,
                            width: 24.0,
                            height: 1.0,
                            margin: const EdgeInsets.symmetric(vertical: 2)),
                        Row(
                          children: <Widget>[
                            Text(
                              userRservation[index].from,
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              userRservation[index].to,
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Container(width: 74.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 16),
                                  primary: Theme.of(context).accentColor),
                              onPressed: () {},
                              child: const Text('Approve'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: FractionalOffset(0.0, 0.5),
                  margin: const EdgeInsets.only(left: 0.0),
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
