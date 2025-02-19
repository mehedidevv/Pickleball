import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/notification_screen.dart';
import 'package:pickball/screens/ui/booking_scrteens/booking_screen.dart';
import 'package:pickball/screens/ui/profile_screen/profail_screen.dart';
//import 'package:pickball/screens/ui/booking_scrteens/profile_screen/profail_screen.dart';
//import 'package:pickball/screens/ui/profile_screen/profail_screen.dart';
import 'package:pickball/screens/ui/search_screens/search_screen.dart';

import '../../Widget/SingleChildContainer.dart';
import '../../Widget/single_trainer_widget.dart';
import '../../components/constrains.dart';
//import 'booking_scrteens/profile_screen/profail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    BookingScreen(),
    ProfailScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          body: ListView(

            children: [
               Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Implement Fist Row for Profile And Notification
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            //Circular Box For Load Image
                            Container(
                              padding: EdgeInsets.all(10),

                              child:  Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // Background color
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      //TODO
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfailScreen()));
                                    },

                                     // child: Image.asset(AppImage.profileImg,scale: 3,),
                                   child:  CircleAvatar(
                                      radius: 40, // The radius of the circle
                                     backgroundImage: AssetImage(AppImage.profileImg),
                                         
                                    ),

                                  )


                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Hey Sunan',
                              style: kLogInTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        //Button For Notification
                        InkWell(
                          onTap: () {
                            // Navigate TO Notification Screen
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                          },

                          borderRadius: BorderRadius.circular(20), // Circular shape
                          child: Container(
                            padding: EdgeInsets.all(10),
                            // Padding inside the circle
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200], // Background color
                            ),
                            child:  Container(
                              // padding: EdgeInsets.all(10),
                              // Padding inside the circle
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // color: Colors.grey[350], // Background color
                                ),
                                child: Image.asset(AppImage.notificationIcon,scale: 3,)
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    //Implementing Second Container
                    Container(
                      height: 130,
                      width: double.infinity,
                      //Decoration
                      decoration: BoxDecoration(
                        color: Color(0XFF305FA1),
                        //border: OutlineInputBorder()
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Color(0XFFCACACA), width: 1), // Rounded corners
                      ),

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Technologies',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                color: Color(0XFFFAFAFA),
                              ),
                            ),
                            Text(
                              '+ Over 14k Product',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFE5E5E5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //For Recommended And See More
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended for You',
                          style: kRecommendedtext
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                              },
                              child: Text(
                                'See more',
                                style: kSeeMoretext
                              ),
                            ),

                            SizedBox(width: 10,),
                            SizedBox(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                                },
                                child: Icon(
                                  Icons.arrow_forward, // Left arrow icon
                                  color: Color(0XFF305FA1), // Icon color
                                  size: 20, // Icon size
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          //SingleChild Container
                          SingleChildContainer(height: 320,width: 300,),

                          SizedBox(
                            width: 10,
                          ),

                          SingleChildContainer(height: 320,width: 200,),

                          SizedBox(
                            width: 10,
                          ),
                          SingleChildContainer(height: 320,width: 300,),
                          SizedBox(
                            width: 10,
                          ),
                          //SingleChild Container
                          SingleChildContainer(height: 320,width: 300,),

                          SizedBox(
                            width: 10,
                          ),

                          SingleChildContainer(height: 320,width: 200,),

                          SizedBox(
                            width: 10,
                          ),
                          SingleChildContainer(height: 320,width: 300,),

                        ],
                      ),
                    ),

                    //Recommender And See More Text
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recommended For You',style: kRecommendedtext,),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                                },
                                child: Text('See More...',style: kSeeMoretext,),
                              ),

                              SizedBox(width: 10,),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                                },
                                child: SizedBox(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Color(0XFF305FA1),

                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: Row(
                        children: [
                          //Container For Trainer Profile
                          TrainerWidget(),
                          SizedBox(width: 10,),
                          TrainerWidget(),
                          SizedBox(width: 10,),
                          TrainerWidget(),
                          SizedBox(width: 10,),
                          TrainerWidget(),
                          SizedBox(width: 10,),
                          TrainerWidget(),
                          SizedBox(width: 10,),
                          TrainerWidget(),
                        ],
                      ),
                    )



                  ],
                ),
              ),
            ],

          ),

          ),
    );
  }
}



