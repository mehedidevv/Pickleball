import 'package:flutter/material.dart';
import 'package:pickball/Widget/SingleChildContainer.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/ui/search_screens/sessions/session_list.dart';
import 'package:pickball/screens/ui/search_screens/sessions/session_screen.dart';
import 'package:pickball/screens/ui/search_screens/trainer/trainer-list.dart';
import 'package:pickball/screens/ui/search_screens/trainer/trainer_profile.dart';
// import 'package:pickball/search_screens/session_screen.dart';
// import 'package:pickball/search_screens/trainer_profile.dart';

import '../../../components/constrains.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  String selectedText = 'Sessions'; // Default selected text

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
                  //Sessions Text
                  GestureDetector(

                    onTap: () {
                      setState(() {
                        selectedText = 'Sessions';
                      });
                    },

                    child: Text('Sessions',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: selectedText == 'Sessions' ? Colors.blue : Colors.black,
                      decoration: selectedText == 'Sessions' ? TextDecoration.underline : TextDecoration.none,
                      decorationColor: selectedText == 'Sessions' ? Colors.blue : Colors.transparent,
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
                        selectedText = 'Trainers';
                      });
                    },
                    //Text For Trainers
                    child: Text('Trainers',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: selectedText == 'Trainers' ? Colors.blue : Colors.black,
                      decoration: selectedText == 'Trainers' ? TextDecoration.underline : TextDecoration.none,
                    ),),
                  ),
                ],
              ),),

            //Row For Searching And Filtering
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              child: Row(
                children: [
                  //Text Field For Search View
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 7.0),
                        labelText: 'Search Anything',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(14.0), // Add some padding to the image
                          child: Image.asset(AppImage.searchIcon2, // Path to your image asset
                            width: 24, // Set a size for the image
                            height: 24,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Color(0XFF000000).withOpacity(0.1),width: 1),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),
                  //Adding Filter Icon
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(AppImage.filterIcon))
                ],
              ),
            ),

            //Applying Stack Method
            Expanded(
              child: Stack(
                children: [
                  // Session Container
                  if (selectedText == 'Sessions')
                    //Session Widget
                    SessionsWidget(),

                  // Trainers Container
                  if (selectedText == 'Trainers')
                    TrainersWidget(),
                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}




