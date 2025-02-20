import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/profile_screen/history/widget/history-upcoming_widget.dart';
import 'package:pickball/screens/ui/profile_screen/history/widget/history_canceled_widget.dart';

import '../../../../appImage.dart';
import '../../booking_scrteens/widget/confirm_list_widget.dart';
import '../../booking_scrteens/widget/waitlist_widget.dart';
import 'widget/history_complete_widget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  String selectedText = 'Completed';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //App Bar Implementation
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
                  )
              ),
            ),
          ),
          title: Text(
            'History',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                color: Color(0XFF305FA1)),
          ),
        ),


        body: Column(
          children: [
            //Row For Sessions And Trainers
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Confirm Text
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedText = 'Completed';
                      });
                    },
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: selectedText == 'Completed'
                            ? Color(0XFF94AF29)
                            : Color(0XFF959595),
                        decoration: selectedText == 'Completed'
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: selectedText == 'Upcoming'
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
                        selectedText = 'Upcoming';
                      });
                    },
                    //Text For Trainers
                    child: Text(
                      'Upcoming',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: selectedText == 'Upcoming'
                            ? Color(0XFF94AF29)
                            : Color(0XFF959595),
                        decoration: selectedText == 'Upcoming'
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: selectedText == 'Completed'
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
                  // GestureDetector(
                  //   onTap: (){
                  //     //TODO
                  //
                  //   },
                  //   child: SizedBox(
                  //       height: 60,
                  //       width: 60,
                  //       child: Image.asset(AppImage.filterIcon)),
                  // )
                ],
              ),
            ),

            //Applying Stack Method
            Expanded(
              child: Stack(
                children: [
                  // Session Container
                  if (selectedText == 'Completed')
                  //TODO Complete Container
                    ListView(
                      children: [
                        Column(
                          children: [
                            HistoryComplete(),
                            HistoryCanceled()
                          ],
                        ),

                      ],
                    ),


                  // Session Container
                  if (selectedText == 'Upcoming')
                  //TODO Upcoming Container
                    ListView(
                      children: [
                        Column(
                          children: [
                            HistoryUpcoming(),
                            HistoryUpcoming(),
                            HistoryUpcoming(),
                          ],
                        ),
                      ],
                    ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








