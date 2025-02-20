import 'package:flutter/material.dart';
import 'package:pickball/components/constrains.dart';

import '../../../appImage.dart';

class ProfileNotificationScreen extends StatefulWidget {
  const ProfileNotificationScreen({super.key});

  @override
  State<ProfileNotificationScreen> createState() =>
      _ProfileNotificationScreenState();
}

class _ProfileNotificationScreenState extends State<ProfileNotificationScreen> {

  bool _isSwitchedBooking = true;
  bool _isSwitchedPayment = true;
  bool _isSwitchedAnnouncement = true;
  bool _isSwitchedPreference = true;



  int? _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //App Bar
        appBar: AppBar(
          leading:
              // Arrow Back Icon
              GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                  padding: EdgeInsets.all(10), // Padding inside the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200], // Background color
                  ),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Icon(Icons.arrow_back),
                  )),
            ),
          ),
          title: Text(
            'Notifications',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                color: Color(0XFF305FA1)),
          ),
        ),

        body: ListView(
          children: [
            //Booking Notification
             Column(

              children: [
                //Row For Booking Notification
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 15,right: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Booking Notification Text
                      Text(
                        'Booking Notification',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF2F2F36)),
                      ),

                      //Toggle Switch
                      Switch(
                        value: _isSwitchedBooking,
                        onChanged: (value) {
                          setState(() {
                            _isSwitchedBooking = value;
                          });
                        },
                        activeColor: Colors.green,
                        // Green color when switched on
                        inactiveThumbColor: Colors.white,
                        // Thumb color when off
                        inactiveTrackColor: Colors.grey[300], // Track color when off
                      ),
                    ],
                  ),


                ),

            Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
        children: [
          // Session Confirmations
          Row(
            children: [
              Radio<int>(
                value: 0,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },

                activeColor: Color(0XFF264776), // Change the color of the selected radio button
                // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

              ),
              Text('Session Confirmations',style: kBookingNotification,),
            ],
          ),

          // Reschedule Alerts
          Row(
            children: [
              Radio<int>(
                value: 1,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },

                activeColor: Color(0XFF264776), // Change the color of the selected radio button
                // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

              ),
              Text('Reschedule Alerts',style: kBookingNotification,),
            ],
          ),

          // Cancellations
          Row(
            children: [
              Radio<int>(
                value: 2,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },

                activeColor: Color(0XFF264776), // Change the color of the selected radio button
                // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

              ),
              Text('Cancellations',style: kBookingNotification,),
            ],
          ),

        ],
      ),


              ],
            ),

            //Payment Notification
            Column(

              children: [
                //Row For Booking Notification
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 15,right: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Booking Notification Text
                      Text(
                        'Payment Notifications',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF2F2F36)),
                      ),

                      //Toggle Switch
                      Switch(
                        value: _isSwitchedPayment,
                        onChanged: (value) {
                          setState(() {
                            _isSwitchedPayment = value;
                          });
                        },
                        activeColor: Colors.green,
                        // Green color when switched on
                        inactiveThumbColor: Colors.white,
                        // Thumb color when off
                        inactiveTrackColor: Colors.grey[300], // Track color when off
                      ),
                    ],
                  ),


                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                  children: [
                    // Session Confirmations
                    Row(
                      children: [
                        Radio<int>(
                          value: 0,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },

                          activeColor: Color(0XFF264776), // Change the color of the selected radio button
                          // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

                        ),
                        Text('Subscription Renewal Reminder',style: kBookingNotification,),
                      ],
                    ),

                    // Reschedule Alerts
                    Row(
                      children: [
                        Radio<int>(
                          value: 1,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },

                          activeColor: Color(0XFF264776), // Change the color of the selected radio button
                          // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

                        ),
                        Text('Payment Success',style: kBookingNotification,),
                      ],
                    ),

                    // Cancellations
                    Row(
                      children: [
                        Radio<int>(
                          value: 2,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },

                          activeColor: Color(0XFF264776), // Change the color of the selected radio button
                          // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

                        ),
                        Text('Refund Processed',style: kBookingNotification,),
                      ],
                    ),

                  ],
                ),


              ],
            ),

            //App Announcements
            Column(

              children: [
                //Row For Booking Notification
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 15,right: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Booking Notification Text
                      Text(
                        'App Announcements',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF2F2F36)),
                      ),

                      //Toggle Switch
                      Switch(
                        value: _isSwitchedAnnouncement,
                        onChanged: (value) {
                          setState(() {
                            _isSwitchedAnnouncement = value;
                          });
                        },
                        activeColor: Colors.green,
                        // Green color when switched on
                        inactiveThumbColor: Colors.white,
                        // Thumb color when off
                        inactiveTrackColor: Colors.grey[300], // Track color when off
                      ),
                    ],
                  ),


                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                  children: [
                    // Session Confirmations
                    Row(
                      children: [
                        Radio<int>(
                          value: 0,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },

                          activeColor: Color(0XFF264776), // Change the color of the selected radio button
                          // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

                        ),
                        Text('New Features & Updates',style: kBookingNotification,),
                      ],
                    ),

                    // Reschedule Alerts
                    Row(
                      children: [
                        Radio<int>(
                          value: 1,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },

                          activeColor: Color(0XFF264776), // Change the color of the selected radio button
                          // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

                        ),
                        Text('Promotions & Discounts',style: kBookingNotification,),
                      ],
                    ),



                  ],
                ),


              ],
            ),

            //Notification Preference
            Column(

              children: [
                //Row For Booking Notification
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 15,right: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Booking Notification Text
                      Text(
                        'Notification Preference',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF2F2F36)),
                      ),

                      //Toggle Switch
                      Switch(
                        value: _isSwitchedPreference,
                        onChanged: (value) {
                          setState(() {
                            _isSwitchedPreference = value;
                          });
                        },
                        activeColor: Colors.green,
                        // Green color when switched on
                        inactiveThumbColor: Colors.white,
                        // Thumb color when off
                        inactiveTrackColor: Colors.grey[300], // Track color when off
                      ),
                    ],
                  ),


                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                  children: [
                    // Session Confirmations
                    Row(
                      children: [
                        Radio<int>(
                          value: 0,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },

                          activeColor: Color(0XFF264776), // Change the color of the selected radio button
                          // visualDensity: VisualDensity(horizontal: 0, vertical: 2), // Increase size

                        ),
                        Text('Push Notifications',style: kBookingNotification,),
                      ],
                    ),



                  ],
                ),


              ],
            ),

            // Save Changes Button
            Center(
              child: SizedBox(
                width: 250,
                height: 50,
                child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset(AppImage.saveChangesBtn)),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
