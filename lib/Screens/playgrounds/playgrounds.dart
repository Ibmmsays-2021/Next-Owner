import 'package:flutter/material.dart';
import 'package:next/Screens/playground_details.dart';
import 'package:next/Screens/playground_list_card.dart';
import 'package:next/Screens/new_playground.dart';
import 'package:next/models/playground.dart';

class Playgrounds extends StatefulWidget {
  @override
  _PlaygroundsState createState() => _PlaygroundsState();
}

class _PlaygroundsState extends State<Playgrounds> {
  // List<Playground> _playgrounds = [];
  // void _addNewCategory(String name, String image) {
  //   final newPlayground = Playground(name, image);
  //   setState(() {
  //     _playgrounds.add(newPlayground);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              'Next',
              style: TextStyle(
                  color: Color(0xffffffff), fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Color(0xff05131A),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/test.jpg"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitHeight)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                          // ignore: deprecated_member_use
                          style: Theme.of(context).textTheme.display1,
                          children: <TextSpan>[
                            TextSpan(
                                text: "Where are you \nPlaying",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: " today?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReadingListCard(
                          image:
                              "assets/images/c7d6b24fa68e7da3491ea06b6af90fc1.jpg",
                          title: "EL Montezah 1",
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/images.jpg",
                          title: "El Montezah 2",
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/images.jpg",
                          title: "El Montezah 3",
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPlayground()),
        ),
      ),
    );
  }
}
