import 'package:flutter/material.dart';
import 'package:pickball/Widget/SingleChildContainer.dart';
import 'package:pickball/appImage.dart';

import '../../components/constrains.dart';

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
                        labelText: 'Search Anything',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(13.0), // Add some padding to the image
                          child: Image.asset(AppImage.searchIcon2, // Path to your image asset
                            width: 24, // Set a size for the image
                            height: 24,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.blue,width: 1),
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

//Session Widget
class SessionsWidget extends StatelessWidget {
  const SessionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10,top: 0,right: 10),
              child: Container(
                width: double.infinity,
                // color: Colors.blueAccent,
                child: SingleChildContainer(height: double.infinity, width: double.infinity),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              child: Container(
                width: double.infinity,
                // color: Colors.blueAccent,
                child: SingleChildContainer(height: double.infinity, width: double.infinity),
              ),
            ),
          ],

        ),
      ],

    );
  }
}

//Trainer Widget
class TrainersWidget extends StatelessWidget {
  const TrainersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,top: 10,right: 10),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.redAccent,
        child: Center(
          child: Text(
            "Trainers Content",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
