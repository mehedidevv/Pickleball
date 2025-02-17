import 'package:flutter/material.dart';

import '../appImage.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(left: 10),
        child: ListView(
          children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row For Arrow Back And Notification Text
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      //Arrow Back Icon
                      GestureDetector(
                        onTap: () {
                          //Navigate To Previous Screen
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // Padding inside the circle
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200], // Background color
                          ),
                          child: Icon(
                            Icons.arrow_back, // Left arrow icon
                            color: Colors.black, // Icon color
                            size: 24, // Icon size
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 30,
                      ),

                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF305FA1)),
                      ),
                    ],
                  ),
                ),

                //Text Field For Search View
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 2.0, horizontal: 7.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: Color(0XFF000000).withOpacity(0.1), width: 1),
                      ),
                    ),
                  ),
                ),

                //Text For New
                Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 10),
                  child: Text(
                    'New',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF305FA1)),
                  ),
                ),

                SingleNotificationWidget(),
                SingleNotificationWidget(),
                SingleNotificationWidget(),
                SingleNotificationWidget(),
                SingleNotificationWidget(),
              ],
            ),
          ],

        ),
      )),
    );
  }
}

//SingleNotification Widget
class SingleNotificationWidget extends StatelessWidget {
  const SingleNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10,right: 10),
      child: Container(
        height: 200,
        width: double.infinity,
        //Decoration
        decoration: BoxDecoration(
          color: Colors.white,
          //border: OutlineInputBorder()
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Color(0XFFCACACA), width: 1), // Rounded corners
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Row For Volume Icon And Text
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns left & right
                  children: [
                    //Row For Icon And Tittle Text
                    Row(
                      children: [
                        //Volume Icon
                        GestureDetector(
                          onTap: () {
                            //TODO
                          },
                          //Adding Volume Icon
                          child: Container(
                            padding: EdgeInsets.all(10),
                            // Padding inside the circle
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFF305FA1), // Background color
                            ),
                            child: SizedBox(
                              height: 24,
                              width: 24,
                              child: Image.asset(AppImage.volumeIcon,color: Color(0XFFFFFFFF),),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 7),
                            child: Text('Good news! A spot just opened up!',style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF2F2F36)
                            ),)),
                      ],
                    ),

                    Text('2 hours ago',style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF4D4D55)
                    ),)
                  ],
                ),
              ),


              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Color(0XFF4D4D55)
                    ), // Default text style
                    children: [
                      TextSpan(text: 'A spot is now available for the March 8, 2025, 6:00 PM session. You have '),
                      TextSpan(
                        text: '25:27', // The bold text
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black), // Make it bold
                      ),
                      TextSpan(text: ' minutes to confirm before it’s offered to the next user!'),
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
                          border: Border.all(
                              color: Color(0XFF305FA1), width: 1),
                          // Blue border with width
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
                        ),
                        child: Center(
                          child: Text(
                            'Confirm',
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
                          border: Border.all(
                              color: Color(0XFFA13430), width: 1),
                          // Blue border with width
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
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
