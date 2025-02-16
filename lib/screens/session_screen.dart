import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/search_screen.dart';

import '../Widget/sessions_widget/description_widget.dart';
import '../Widget/sessions_widget/review_widget.dart';
import '../appImage.dart';

class SessionScreen extends StatefulWidget {
  const SessionScreen({super.key});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {

  String selectedText = 'Descriptions'; // Default selected text

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [

          //First Container Add Background Image
          Container(
              height: 300,
              width: double.infinity,
              //Decoration For Container
              decoration: BoxDecoration(
                //border: OutlineInputBorder()
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0XFFCACACA), width: 1),

                image: DecorationImage(
                  image: AssetImage(AppImage.backgroundImage),
                  // Load from assets
                  fit: BoxFit.cover, // Adjust image size
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFF000000).withOpacity(0.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Row For Arrow Back And Star Icon
                    Padding(
                      padding: EdgeInsets.only(top: 40, left: 20, right: 20),

                      //Row For Back Arrow And Star Icon
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // First Icon with rounded background
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0XFF1D3557).withOpacity(0.3),
                                // Background color for the icon container
                                borderRadius:
                                    BorderRadius.circular(30), // Rounded corners
                              ),
                              child: Image.asset(
                                AppImage.arrowBackIcon,
                                // Path to your image asset
                                width: 20, // Adjust the size of the image
                                height: 20, // Adjust the size of the image
                              ),
                            ),
                          ),

                          // Second Icon with rounded background
                          Container(
                            padding: EdgeInsets.all(20),
                            // Add padding inside the container for spacing around the icon
                            decoration: BoxDecoration(
                              color: Color(0XFF305FA1).withOpacity(0.4),
                              // Background color for the icon container
                              borderRadius:
                                  BorderRadius.circular(30), // Rounded corners
                            ),
                            child: Image.asset(
                              AppImage.starWhiteIcon,
                              // Path to your image asset
                              width: 20, // Adjust the size of the image
                              height: 20, // Adjust the size of the image
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Text
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 30),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Double Strategy \n MasterClass',
                          style: TextStyle(
                              //TODO Add Style
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              )),

          //Implementing Booking Button
          Padding(
            padding: EdgeInsets.only(right: 10,),
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0XFF305FA1), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Padding for button
                ),
                //On Pressed Function
                onPressed: () {
                  //TODO Add the onPressed action here
                  print('Book Now pressed');
                },

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  // To make the button size fit the content
                  children: [
                    Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10), // Space between text and icon
                    CircleAvatar(
                      radius: 16, // Icon size
                      backgroundColor: Color(0XFFFFFFFF).withOpacity(0.1),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white, // Icon color
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Row For Descriptions And Reviews
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Descriptions Text
                GestureDetector(

                  //On Tap Function
                  onTap: () {
                    setState(() {
                      selectedText = 'Descriptions';

                    });
                  },

                  child: Text('Descriptions',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: selectedText == 'Descriptions' ? Colors.blue : Colors.black,
                    decoration: selectedText == 'Descriptions' ? TextDecoration.underline : TextDecoration.none,
                    decorationColor: selectedText == 'Descriptions' ? Colors.blue : Colors.transparent,
                  ),
                  ),
                ),

                SizedBox(
                  width: 50,
                ),

                //Review Text
                GestureDetector(

                  //onTap Function
                  onTap: () {
                    setState(() {
                      selectedText = 'Reviews';
                    });
                  },

                  child: Text('Reviews',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: selectedText == 'Reviews' ? Colors.blue : Colors.black,
                    decoration: selectedText == 'Reviews' ? TextDecoration.underline : TextDecoration.none,
                  ),),
                ),



              ],
            ),),

          //Using Stack For Descriptions and Reviews
          Expanded(
            child: Stack(
              children: [
                // Session Container
                if (selectedText == 'Descriptions')
                //Description Widget
                  DescriptionSessions(),

                // Trainers Container
                if (selectedText == 'Reviews')
                  ReviewScreen(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}







