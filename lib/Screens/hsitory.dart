import 'package:flutter/material.dart';
import '../models/historyModel.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List<HistoryModel> userRservation = [
    HistoryModel(
        "Ibrahim Muhammed", "01115691639", "assets/images/playGround.jpg"),
    HistoryModel("Osama Hamdy", "01115887639",
        "assets/images/c7d6b24fa68e7da3491ea06b6af90fc1.jpg"),
    HistoryModel("Ahmed Nashaat", "01115691639", "assets/images/images2.jpg"),
    HistoryModel("Ibrahim Hamdy", "01115691639", "assets/images/images.jpg"),
    HistoryModel(
        "Ibrahim Muhammed", "01115691639", "assets/images/image_by_url.jpg"),
  ];
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset('assets/images/icon.png',
                width: 40, height: 40, fit: BoxFit.contain),
            SizedBox(
              width: 20,
            ),
            Text(
              'Next-Current',
              style: TextStyle(
                  color: Color(0xffffffff), fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Color(0xff05131A),
        actions: <Widget>[],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: userRservation.length,
        itemBuilder: (context, int index) {
          return SizedBox(
            height: 110.0,
            child: Card(
              elevation: 2.0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image.asset(
                        userRservation[index].image,
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(
                      userRservation[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(userRservation[index].phone),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
