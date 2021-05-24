import 'package:flutter/material.dart';

import 'dart:io';
import 'dart:ui';

class Post extends StatelessWidget {
  bool hasStory;
  var numOfUser;
  var name = ' ';
  var location = ' ';
  var numOfLikes;
  var postText = ' ';
  var numOfComments;
  var commentTag = ' ';
  var commentText = ' ';
  var days;
  Post(
      {this.hasStory,
      this.numOfUser,
      this.name,
      this.location,
      this.numOfLikes,
      this.postText,
      this.numOfComments,
      this.commentTag,
      this.commentText,
      this.days});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                hasStory
                    ? smallProfileWithStory(numOfUser)
                    : smallProfileWithoutStory(numOfUser),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily:
                            Platform.isAndroid ? 'Roboto' : 'Neue Helvetica',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        fontFamily:
                            Platform.isAndroid ? 'Roboto' : 'Neue Helvetica',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'images/more.png',
              width: 40,
            ),
          ],
        ),
        Image.asset('images/instagrammer' + '$numOfUser' + '_post.png'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 8.0, right: 4.0),
                    child: Image.asset('images/heart.png', width: 40),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 8.0, right: 4.0),
                    child: Image.asset('images/comment.png', width: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      right: 4.0,
                    ),
                    child: Image.asset('images/message.png', width: 40),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 4.0),
              child: Image.asset('images/save.png', width: 40),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              '$numOfLikes likes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Container(
            width: window.physicalSize.width,
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: name + ' ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: postText,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'View all ' + '$numOfComments' + ' comments',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Container(
            width: window.physicalSize.width,
            child: RichText(
              text: TextSpan(
                text: name + ' ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: commentTag + ' ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.indigo,
                    ),
                  ),
                  TextSpan(
                    text: commentText,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/riya.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    '😊',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    '😂',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.add_circle_outline, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              '$days' + ' days ago',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
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
        ),
      ),
    ),
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
