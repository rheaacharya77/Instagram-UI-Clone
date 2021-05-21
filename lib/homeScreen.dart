import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('images/riya.jpg'),
                            ),
                            Positioned(
                              right: -2.0,
                              bottom: -2.0,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('images/addstory.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('Your Story'),
                        ),
                      ],
                    ),
                  ),
                  //instagrammer1
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 39,
                          backgroundImage:
                              AssetImage('images/storybackground.jpg'),
                          child: CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('images/instagrammer1.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4.0,
                          ),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                'mariaballik',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //instagrammer2

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 39,
                          backgroundImage:
                              AssetImage('images/storybackground.jpg'),
                          child: CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('images/instagrammer2.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4.0,
                          ),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                'travelwitheufrozina',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //instagrammer3

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 39,
                          backgroundImage:
                              AssetImage('images/storybackground.jpg'),
                          child: CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('images/instagrammer3.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4.0,
                          ),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                'stefanihalman',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //instagrammer4

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 39,
                          backgroundImage:
                              AssetImage('images/storybackground.jpg'),
                          child: CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('images/instagrammer4.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4.0,
                          ),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                'benandkristenea',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //instagrammer5
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/instagrammer6.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4.0,
                          ),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                'mamarosiebella',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //instagrammer6
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('images/instagrammer5.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4.0,
                          ),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                'lifeoflalabu',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
  }
}
