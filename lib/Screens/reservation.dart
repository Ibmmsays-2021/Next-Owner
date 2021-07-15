import 'package:flutter/material.dart';
import 'package:next/Screens/reservation_row.dart';
import 'package:next/models/resesrvation.dart';

class Reservation extends StatefulWidget {
  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  final List<Resrvation> userreservations = [];
  @override
  Widget build(BuildContext context) {
    return ReservationRow();
  }
}
