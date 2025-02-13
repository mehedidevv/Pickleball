import 'package:flutter/material.dart';
import 'package:pickball/appImage.dart';

import '../Widget/SingleChildContainer.dart';
import '../components/constrains.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Implement Fist Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //TODO For Circular Box
                      InkWell(
                        onTap: () {
                          // Navigate To Previous Screen
                          // Navigator.pop(context);
                        },
                        borderRadius: BorderRadius.circular(20),
                        // Circular shape
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // Padding inside the circle
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200], // Background color
                          ),
                          child: Icon(
                            Icons.camera_alt, // Left arrow icon
                            color: Colors.black, // Icon color
                            size: 24, // Icon size
                          ),
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
                      padding: EdgeInsets.all(10), // Padding inside the circle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200], // Background color
                      ),
                      child: Icon(
                        Icons.notification_important, // Left arrow icon
                        color: Colors.black, // Icon color
                        size: 24, // Icon size
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
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

              //SingleChild Container
              SingleChildContainer(),
            ],
          ),
        ),
      ),
    );
  }
}


