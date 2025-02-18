import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/profile_screen/history/write_review_screen.dart';

import '../../../../../appImage.dart';


class HistoryComplete extends StatelessWidget {
  const HistoryComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),

      child: Container(
        height: 200,
        width: double.infinity,
        //Decoration
        decoration: BoxDecoration(
          color: Colors.white,
          //border: OutlineInputBorder()
          borderRadius: BorderRadius.circular(20),
          border:
          Border.all(color: Color(0XFFCACACA), width: 1), // Rounded corners
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Row For Profile And Name
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        //Load Trainer Image
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(AppImage.trainerImg),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Coach John Smith',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF4D4D55)),
                        ),




                      ],
                    ),
                    //Complete Button
                    ElevatedButton(
                      onPressed: () {
                        // Add action when button is pressed
                        print('Complete button pressed');
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFFB2D235),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25), // Button padding
                      ),
                      child: Text(
                        'Complete', // Button text
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],

                ),
              ),

              //Text For Double Strategy MasterClass
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Double Strategy MasterClass',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF000000)),
                  ),
                ),
              ),

              Expanded(
                  flex: 1,
                  child: Text('Amount Paid \$50',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF4D4D55)
                  ),)),

              //ROW For Date And Time
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Another Row For Date
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(AppImage.dateIcon),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '25 January 2025',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF4D4D55)),
                          ),
                        ],
                      ),

                      //Another Row For Time
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(AppImage.clockIcon),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '2.00 PM - 3.00 PM',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF4D4D55)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //Row For Rebook And  Leave Review Button
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Rebook Button
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color(0XFF305FA1),
                          // Light blue background
                          border: Border.all(
                              color: Color(0XFF305FA1),
                              width: 1),
                          // Blue border with width
                          borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                        ),
                        child: Center(
                          child: Text(
                            'Rebook',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      //Leave Review Button
                      GestureDetector(
                        onTap: (){

                          //TODO NAvigate to Write Review Screen
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WriteReviewScreen()));
                        },

                        child: Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0XFF305FA1).withOpacity(0.1),
                            // Light blue background
                            border: Border.all(color: Color(0XFF305FA1), width: 1),
                            // Blue border with width
                            borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                          ),
                          child: Center(
                            child: Text(
                              'Leave a Review',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF305FA1),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}