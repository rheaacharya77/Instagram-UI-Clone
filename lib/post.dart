import 'package:flutter/material.dart';
import 'dart:io';

class Post extends StatelessWidget {
  bool hasStory;
  final numOfUser;
  final String name;
  final String location;

  Post({this.hasStory, this.numOfUser, this.name, this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                hasStory
                    ? smallProfileWithStory(numOfUser)
                    : smallProfileWithoutStory(numOfUser),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily:
                            Platform.isAndroid ? 'Roboto' : 'Neue Helvetica',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(location,
                        style: TextStyle(
                          fontFamily:
                              Platform.isAndroid ? 'Roboto' : 'Neue Helvetica',
                        )),
                  ],
                )
              ],
            ),
            Image.asset(
              'images/more.png',
              width: 40,
            )
          ],
        ),
        Image.asset('images/instagrammer' + '$numOfUser' +'_post.png'),
      ],
    );
  }
}

Widget smallProfileWithStory(numOfUser) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage('images/storybackground.jpg'),
        child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/instagrammer$numOfUser.png'),
            ))),
  );
}

Widget smallProfileWithoutStory(numOfUser) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('images/instagrammer$numOfUser.png'),
    ),
  );
}
