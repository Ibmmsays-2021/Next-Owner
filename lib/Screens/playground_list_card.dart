import 'package:flutter/material.dart';

import 'Two_Side_Rounded_Button.dart';

class ReadingListCard extends StatelessWidget {
  final String title;
  final String image;
  final String rating;
  final Function pressDetails;

  const ReadingListCard({
    Key key,
    this.title,
    this.image,
    this.rating,
    this.pressDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 290,
      width: 250,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 33,
                        color: Color(0xff2c2715))
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 29),
            child: Image.asset(
              image,
              width: 200,
            ),
          ),
          Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.favorite_border), onPressed: null),
                  // BookRating(score: rating),
                ],
              )),
          Positioned(
              top: 180,
              child: Container(
                height: 110,
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "$title\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ])),
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            width: 101,
                          ),
                        ),
                        Expanded(
                            child: TwoSideRoundedButton(
                          text: "Details",
                          press: pressDetails,
                        ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
