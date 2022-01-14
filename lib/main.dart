import 'dart:io';

import 'package:better_half/shared/fragments.dart';
import 'package:better_half/screens.dart/home_screen.dart';
import 'package:better_half/shared/list_of_sent_requests.dart';
import 'package:better_half/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}
