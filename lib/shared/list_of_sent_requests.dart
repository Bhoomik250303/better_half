import 'package:better_half/colors.dart';
import 'package:better_half/models/userdata.dart';
import 'package:flutter/material.dart';

class ListOfSentRequests extends StatefulWidget {
  final Function snack;
  ListOfSentRequests({required this.snack});

  @override
  _ListOfSentRequestsState createState() => _ListOfSentRequestsState();
}

class _ListOfSentRequestsState extends State<ListOfSentRequests> {
  List<userData> listOfUserData = [
    userData(
        name: 'Neena',
        age: '29',
        lastActivity: '2hrs',
        imageUrl: 'assets/girl.jpeg',
        location: 'Bangaluru, Karnataka',
        position: 'Product Manager, Swiggy',
        seenStatus: '8h',
        interests: '33 out of 42'),
    userData(
        name: 'Neena',
        age: '29',
        lastActivity: '2hrs',
        imageUrl: 'assets/girl.jpeg',
        location: 'Bangaluru, Karnataka',
        position: 'Product Manager, Swiggy',
        seenStatus: '8h',
        interests: '33 out of 42'),
    userData(
        name: 'Neena',
        age: '29',
        lastActivity: '2hrs',
        imageUrl: 'assets/girl.jpeg',
        location: 'Bangaluru, Karnataka',
        position: 'Product Manager, Swiggy',
        seenStatus: '8h',
        interests: '33 out of 42'),
    userData(
        name: 'Neena',
        age: '29',
        lastActivity: '2hrs',
        imageUrl: 'assets/girl.jpeg',
        location: 'Bangaluru, Karnataka',
        position: 'Product Manager, Swiggy',
        seenStatus: '8h',
        interests: '33 out of 42'),
    userData(
        name: 'Neena',
        age: '29',
        lastActivity: '2hrs',
        imageUrl: 'assets/girl.jpeg',
        location: 'Bangaluru, Karnataka',
        position: 'Product Manager, Swiggy',
        seenStatus: '8h',
        interests: '33 out of 42'),
    userData(
        name: 'Neena',
        age: '29',
        lastActivity: '2hrs',
        imageUrl: 'assets/girl.jpeg',
        location: 'Bangaluru, Karnataka',
        position: 'Product Manager, Swiggy',
        seenStatus: '8h',
        interests: '33 out of 42'),
  ];
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listOfUserData.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          color: Colors.white,
          elevation: 8.0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(64.0))),
                        child: Image.asset(
                          'assets/girl.jpg',
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Container(
                        height: 95,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "${listOfUserData[index].name}, ${listOfUserData[index].age}",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text(listOfUserData[index].location),
                            Text(listOfUserData[index].position),
                            Container(
                              decoration: BoxDecoration(
                                color: color_pink_background,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Seen ${listOfUserData[index].seenStatus} ago",
                                  style: TextStyle(
                                      color: color_pink,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: widthScreen,
                  color: color_pink_background,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "You''re at ${listOfUserData[index].interests} received interests for ${listOfUserData[index].name}",
                        style: TextStyle(
                            color: color_pink, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          widget.snack("Sending Sparkle");
                        },
                        child: Text('Send Sparkle',
                            style: TextStyle(
                                color: color_yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                      Text(' to move to the first spot'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
