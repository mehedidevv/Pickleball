import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/ui/profile_screen/profail_screen.dart';
//import 'package:pickball/screens/ui/booking_scrteens/profile_screen/profail_screen.dart';
//import 'package:pickball/screens/ui/profile_screen/profail_screen.dart';
import 'package:pickball/screens/ui/search_screens/search_screen.dart';

import 'booking_scrteens/booking_screen.dart';
//import 'booking_scrteens/profile_screen/profail_screen.dart';
import 'home_screen.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: UiDesign()));

class UiDesign extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<UiDesign> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  //List of Screens
  List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    BookingScreen(),
    ProfailScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),

      //Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color(0XFF1D3557).withOpacity(0.1),
              width: 1
            ),
            color: Color(0XFFADADAD).withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),

          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Color(0XFF305FA1),  //0XFF305FA1
                color: Colors.black,
                tabs: [

                  //Home Screen
                  GButton(
                    icon: Icons.circle, // Placeholder to satisfy the required parameter
                    leading: Image.asset(AppImage.home, // Path to your asset image
                      width: 24,  // Adjust size as needed
                      height: 24,
                    ),
                    text: 'Home',
                  ),

                  //Search Screen
                  GButton(
                    icon: Icons.circle, // Placeholder to satisfy the required parameter
                    leading: Image.asset(AppImage.searchIcon, // Path to your asset image
                      width: 24,  // Adjust size as needed
                      height: 24,
                    ),
                    text: 'Search',
                  ),
                  //Booking Screen
                  GButton(
                    icon: Icons.circle, // Placeholder to satisfy the required parameter
                    leading: Image.asset(AppImage.orderIcon, // Path to your asset image
                      width: 24,  // Adjust size as needed
                      height: 24,
                    ),
                    text: 'Booking',
                  ),

                  //Profile Screen
                  GButton(
                    icon: Icons.circle, // Placeholder to satisfy the required parameter
                    leading: Image.asset(AppImage.profileIcon, // Path to your asset image
                      width: 24,  // Adjust size as needed
                      height: 24,
                    ),
                    text: 'Profile',
                  ),
                ],


                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}