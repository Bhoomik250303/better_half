import 'package:better_half/colors.dart';
import 'package:better_half/shared/list_of_sent_requests.dart';
import 'package:flutter/material.dart';

class UpperTab extends StatefulWidget {
  final Function snack;
  UpperTab({required this.snack});

  @override
  _UpperTabState createState() => _UpperTabState();
}

class _UpperTabState extends State<UpperTab> {
  final int counter = 5;
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              color: Colors.white,
              child: TabBar(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                labelColor: color_pink,
                indicator: BoxDecoration(
                  color: color_pink_background,
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                tabs: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sent',
                      style: TextStyle(
                          color: color_pink, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Queued',
                        style: TextStyle(
                            color: color_pink, fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: color_pink,
                        child: Text(
                          '5',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              constraints: BoxConstraints(
                  minHeight: 1000, maxHeight: 1500, minWidth: widthScreen),
              child: TabBarView(
                children: [
                  ListOfSentRequests(
                    snack: widget.snack,
                  ),
                  ListOfSentRequests(
                    snack: widget.snack,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
