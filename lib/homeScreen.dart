import 'package:flutter/material.dart';
import './post.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
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
                  padding: const EdgeInsets.only(top: 10.0, left: 8.0),
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
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Container(
                          width: 100.0,
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
                  padding: const EdgeInsets.only(top: 10.0, left: 8.0),
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
                        backgroundImage: AssetImage('images/instagrammer6.png'),
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
                        backgroundImage: AssetImage('images/instagrammer5.png'),
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
          Divider(),
          Column(
            children: [
              Post(
                hasStory: true,
                numOfUser: 1,
                name: 'mariaballik',
                location: 'San Francisco, California',
                numOfLikes: '345',
                postText:
                    'Friendship is born at that moment when one person says to another, ‘What! You too? I thought I was the only one.',
                numOfComments: 218,
                commentTag: '@elle',
                commentText: 'Yes,that\'s true...hahaha 😂😂',
                days: 2,
              ),
              Post(
                hasStory: true,
                numOfUser: 2,
                name: 'travelwitheufrozina',
                location: 'Cappadocia, Turkey',
                numOfLikes: 1123,
                postText:
                    'Landscapes of Cappadocia are on of Turkey\'s most popular natural wonders. ⛰🎈🇹🇷 ',
                numOfComments: 344,
                commentTag: '@turkeyylola',
                commentText:
                    'Lonely Planet says that “even compared to many other popular traveller destinations across the world, Cappadocia remains an incredibly safe place”, including for solo female travellers 👩',
                days: 2,
              ),
              Post(
                hasStory: true,
                numOfUser: 3,
                name: 'stefanihalman',
                location: 'Bergen, Norway',
                numOfLikes: 78,
                postText:
                    'My study tips for Fall 2020🌟: \n1. Organize your time: Make a timetable for yourself!',
                numOfComments: 13,
                commentTag: '@kimhartkol',
                commentText: 'Exactlyy!',
                days: 3,
              ),
              Post(
                hasStory:true,
                numOfUser:4,
                name:'benandkristenea',
                location:'New York, New York',
                numOfLikes:'146',
                postText:"We bought our first official home! It's in a very calm neighborhood. There's a lot of window which I absolutley adore! Hope I will manage to furnish my studio soon...",
                numOfComments:'77',
                commentTag:'@roomdecorvanessa',
                commentText:'Love it! So nice to have somenody to share with',
                days:'3',

              ),
              Post(
                hasStory:false,
                numOfUser:5,
                name:'lifeoflalabu',
                location:'Malmo,Sweden',
                numOfLikes:'25',
                postText:'Best way to start a day: coffee + photography',
                numOfComments:'3',
                commentTag:'@photography_lizziemaid',
                commentText:'wow, it\'s so cool!', 
                days:'4',
              ),
              Post(
                hasStory:false,
                numOfUser:6,
                name:'mamarosiebella',
                location:'Seattle, Washington',
                numOfLikes:'340',
                postText: 'Huge birthday give away! \nBella is 5 today and we like to thank you for your support in the past 5 years',
                numOfComments:'288',
                commentTag:'@katelinhuge',
                commentText:'Thank you! She is really happy',
                days:'4',
              ),
              ],
          ),
        ],
      ),
    );
  }
}
