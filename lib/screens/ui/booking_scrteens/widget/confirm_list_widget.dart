import 'package:flutter/material.dart';

import '../../../../appImage.dart';

// ConfirmList Container Implementation
class ConfirmListContainer extends StatelessWidget {
  const ConfirmListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SingleConfirmList(),
            SingleConfirmList(),
            SingleConfirmList(),
            SingleConfirmList(),
          ],
        ),
      ],
    );
  }
}

//Single Confirm List
class SingleConfirmList extends StatelessWidget {
  const SingleConfirmList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),

      child: Container(
        height: 180,
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
                child: Row(
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
                    )
                  ],
                ),
              ),

              //Text For Double Strategy MasterClass
              Expanded(
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

              //ROW For Date And Time
              Expanded(
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

              //Row For Reschedule And Cancel Button
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Reschedule Button
                      Container(
                        height: 40,
                        width: 130,
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
                            'Reschedule',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF305FA1),
                            ),
                          ),
                        ),
                      ),
                
                      //Cancel Button
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color(0XFFA13430).withOpacity(0.1),
                          // Light blue background
                          border: Border.all(color: Color(0XFFA13430), width: 1),
                          // Blue border with width
                          borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFA13430),
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