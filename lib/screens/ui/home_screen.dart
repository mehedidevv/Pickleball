import 'package:flutter/material.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/ui/booking_screen.dart';
import 'package:pickball/screens/ui/profail_screen.dart';
import 'package:pickball/screens/ui/search_screen.dart';

import '../../Widget/SingleChildContainer.dart';
import '../../Widget/trainer_widget.dart';
import '../../components/constrains.dart';

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
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
                            //TODO For Circular Box
                            Container(
                              padding: EdgeInsets.all(10),
                              child:  Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // Background color
                                  ),
                                  child: Image.asset(AppImage.profileImg,scale: 3,)
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
                        InkWell(
                          onTap: () {
                            // Navigate To Previous Screen
                            // Navigator.pop(context);
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
                      height: 15,
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
                      height: 20,
                    ),

                    //For Recommended And See More
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended for You',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF2F2F36),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF305FA1),
                              ),
                            ),
                            SizedBox(
                              child: Icon(
                                Icons.arrow_forward, // Left arrow icon
                                color: Color(0XFF305FA1), // Icon color
                                size: 20, // Icon size
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
                          SingleChildContainer(height: 300,width: 280,),
                          SizedBox(
                            width: 10,
                          ),
                          SingleChildContainer(height: 300,width: 280,),

                          SizedBox(
                            width: 10,
                          ),
                          SingleChildContainer(height: 300,width: 280,),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recommended For You',style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF2F2F36),
                              letterSpacing: 0.2

                          ),),
                          Row(
                            children: [
                              Text('See More...',style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF305FA1),
                                  letterSpacing: 0.2
                              ),),

                              SizedBox(width: 10,),

                              SizedBox(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0XFF305FA1),

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
                          TrainerWidget(),
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



