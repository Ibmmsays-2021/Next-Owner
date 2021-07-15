import 'package:flutter/material.dart';
import 'package:next/Screens/approved_row.dart';
import 'package:next/Screens/reservation_row.dart';
import 'package:next/models/resesrvation.dart';

class Approved extends StatefulWidget {
  @override
  _ApprovedState createState() => _ApprovedState();
}

class _ApprovedState extends State<Approved> {
  @override
  Widget build(BuildContext context) {
    return ApprovedRow();
  }
}
