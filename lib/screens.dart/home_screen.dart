import 'package:better_half/colors.dart';
import 'package:better_half/shared/list_of_sent_requests.dart';
import 'package:better_half/shared/upper_tabbar.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  final Function snack;
  DashBoard({required this.snack});

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          constraints: BoxConstraints(
              minHeight: heightScreen, maxHeight: heightScreen + 1000),
          decoration: const BoxDecoration(color: Colors.white),
          child: Container(
              margin: const EdgeInsets.only(top: 16.0),
              constraints: BoxConstraints(minWidth: widthScreen, minHeight: 75),
              child: UpperTab(snack: widget.snack,)),
        ),
      ),
    );
  }
}
