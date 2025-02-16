import 'package:flutter/material.dart';

import '../../appImage.dart';


//Descriptions Widget For Sessions Screen
class DescriptionSessions extends StatelessWidget {
  const DescriptionSessions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Text For Program Description
              Text('Program Description',style: TextStyle(
                  fontSize: 19,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF000000)
              ),),

              //Text For Description
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Master the art of playing doubles in this comprehensive session '
                    'designed for intermediate to advanced Pickleball players.'
                    ' Learn winning strategies, effective communication techniques,'
                    ' and positional play to dominate the court with your partner',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF4D4D55)
                  ),),
              ),

              //Location Text
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Location',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF000000)
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text('Sunset Pickleball Club, Miami Beach, FL',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              //Session Type Text
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Session Type',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF000000)
                ),),
              ),

              //Open Play Text
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text('Open Play',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              //Skill Level Text
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Skill Level',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF000000)
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text('Beginner',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              //Session Pricing Text
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Session Pricing',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF000000)
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("\$25 per session \$90 for 4 sessions",style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              //Trainer Information Text
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text('Trainer',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),),
              ),

              //Row For Trainer Information
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    //Load Trainer Image
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(AppImage.trainerImg),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('John Smith',style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF4D4D55)
                          ),),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Icon(Icons.star,
                                  color: Color(0XFFF69000),
                                ),
                              ),
                              Text('4.5',style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF4D4D55)
                              ),),
                            ],
                          ),
                          Text('10 Years+ Experience',style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF4D4D55)
                          ),),
                        ],

                      ),
                    )
                  ],
                ),
              ),

              //Learning Objectives Text
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text('Key Learning And Objectives',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text('• Footwork Drills',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text('• Advanced strategies',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text('• Doubles play tactics',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              //Session Schedule
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text('Session Schedule ',style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text('Time: 60 Minutes',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text('Duration: 2.00 PM - 3.00 PM',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF4D4D55)
                ),),
              ),

            ],
          ),
        )
      ],
    );
  }
}