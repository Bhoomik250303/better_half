import 'package:better_half/colors.dart';
import 'package:better_half/screens.dart/home_screen.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  void snackbar(String val) {
    scaffoldKey.currentState!.showSnackBar(SnackBar(
        backgroundColor: Colors.grey[200],
        elevation: 32.0,
        content: Text(
          val,
          style: TextStyle(color: color_yellow),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            shadowColor: Colors.grey[100],
            elevation: 5.0,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: Text(
              'betterhalf.ai',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.messenger_outlined,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            ),
            child: TabBar(
              labelColor: Colors.black,
              labelPadding: EdgeInsets.all(0.0),
              indicatorColor: Colors.black,
              unselectedLabelColor: color_pink,
              indicator: BoxDecoration(
                color: Colors.transparent,
              ),
              tabs: [
                Tab(
                  text: 'Matches',
                  icon: Icon(
                    Icons.person,
                  ),
                ),
                Tab(
                  text: 'Received',
                  icon: Icon(
                    Icons.person,
                  ),
                ),
                Tab(
                  text: 'Sent',
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                DashBoard(snack: snackbar),
                DashBoard(snack: snackbar),
                DashBoard(snack: snackbar)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
