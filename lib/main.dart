import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:next/Repository/playground_repository.dart';
import 'package:next/Screens/playgrounds/bloc/playground_bloc.dart';
import 'package:next/Screens/playgrounds/bloc/playground_event.dart';
import 'package:next/Screens/playgrounds/bloc/playground_state.dart';
import 'package:next/Screens/welcome_screen.dart';
import 'package:next/models/playground.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff05131A),
        accentColor: Color(0xff54BDD6),
        fontFamily: 'helvicta', 
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            fontSize: 18.0,
            fontFamily: 'helvicta',
            color: Colors.black,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  FSBStatus status;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PlaygroundBloc(InitialState(), PlaygroundRepository()),
      child: Scaffold(
        body: OnBoardingPage(),
      ),
    );
  }
}

 