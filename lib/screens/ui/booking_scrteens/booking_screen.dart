import 'package:flutter/material.dart';
import 'package:pickball/screens/notification_screen.dart';
import 'package:pickball/screens/ui/booking_scrteens/widget/confirm_list_widget.dart';
import 'package:pickball/screens/ui/booking_scrteens/widget/waitlist_widget.dart';

import '../../../appImage.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String selectedText = 'Confirm'; // Default selected text

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            //Row For Sessions And Trainers
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Confirm Text
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedText = 'Confirm';
                      });
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: selectedText == 'Confirm'
                            ? Color(0XFF94AF29)
                            : Color(0XFF959595),
                        decoration: selectedText == 'Confirm'
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: selectedText == 'Confirm'
                            ? Color(0XFF94AF29)
                            : Colors.transparent,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  //Trainer Text
                  GestureDetector(
                    //On Click Functionality
                    onTap: () {
                      setState(() {
                        selectedText = 'WaitList';
                      });
                    },
                    //Text For Trainers
                    child: Text(
                      'WaitList',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: selectedText == 'WaitList'
                            ? Color(0XFF94AF29)
                            : Color(0XFF959595),
                        decoration: selectedText == 'WaitList'
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: selectedText == 'Confirm'
                            ? Color(0XFF94AF29)
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Row For Searching And Filtering
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Row(
                children: [
                  //Text Field For Search View
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 7.0),
                        labelText: 'Search Anything',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(14.0),
                          // Add some padding to the image
                          child: Image.asset(
                            AppImage.searchIcon2,
                            // Path to your image asset
                            width: 24, // Set a size for the image
                            height: 24,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                              color: Color(0XFF000000).withOpacity(0.1),
                              width: 1),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  //Adding Filter Icon
                  //Applying On Click Function
                  GestureDetector(
                    onTap: (){
                      //TODO

                    },
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset(AppImage.filterIcon)),
                  )
                ],
              ),
            ),

            //Applying Stack Method
            Expanded(
              child: Stack(
                children: [
                  // Session Container
                  if (selectedText == 'Confirm')
                    //TODO ConfirmList Container
                    ConfirmListContainer(),
                  // Session Container
                  if (selectedText == 'WaitList')
                    //TODO ConfirmList Container
                    WaitListContainer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



