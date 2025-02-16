import 'package:flutter/material.dart';
import 'package:pickball/Widget/SingleChildContainer.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/session_screen.dart';
import 'package:pickball/screens/trainer_profile.dart';

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
              child: GestureDetector(
                //OnClick Function
                onTap: (){
                  //TODO On Click Function for go to Session Screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen()));
                },

                child: Container(
                  width: double.infinity,
                  child: SingleChildContainer(height: double.infinity, width: double.infinity),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              child: GestureDetector(
                //On Click Function
                onTap: (){
                  //Todo On Click Function

                },

                child: Container(
                  width: double.infinity,
                  // color: Colors.blueAccent,
                  child: SingleChildContainer(height: double.infinity, width: double.infinity),
                ),
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: [
           Column(
            children: [

              //First Row Which Has Two Trainer Widget
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,),
                //First Row
                child: Row(
                  children: [
                    //First Trainer Widget
                    Expanded(
                      child: GestureDetector(

                        //On Click Function
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrainerProfile()));
                        },

                        child: Container(
                          height: 230,
                          width: 220,
                          //Decoration
                          decoration: BoxDecoration(
                            //border: OutlineInputBorder()
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFFCACACA), width: 1),

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Load Trainer Image
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(AppImage.trainerImg),
                                ),

                                Text('John Smith',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.black
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.star,
                                        color: Color(0XFFF69000),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Text('4.5',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        color: Colors.black
                                    ),),
                                  ],
                                ),

                                Text("10+ Years  \$50/hour ",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF4D4D55),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text('View Details',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      color: Colors.black,

                                    ),),
                                    SizedBox(width: 20,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // Padding inside the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFB2D235), // Background color
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward, // Left arrow icon
                                        color: Colors.black, // Icon color
                                        size: 24, // Icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),

                    SizedBox(width: 10,),
                    //Second Trainer Widget

                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrainerProfile()));
                        },
                        child: Container(
                          height: 230,
                          width: 220,
                          //Decoration
                          decoration: BoxDecoration(
                            //border: OutlineInputBorder()
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFFCACACA), width: 1),

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Load Trainer Image
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(AppImage.trainerImg),
                                ),

                                Text('John Smith',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.black
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.star,
                                        color: Color(0XFFF69000),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Text('4.5',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        color: Colors.black
                                    ),),
                                  ],
                                ),

                                Text("10+ Years  \$50/hour ",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF4D4D55),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text('View Details',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      color: Colors.black,

                                    ),),
                                    SizedBox(width: 20,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // Padding inside the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFB2D235), // Background color
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward, // Left arrow icon
                                        color: Colors.black, // Icon color
                                        size: 24, // Icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              ),

              //Second Row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //Second Row
                child: Row(
                  children: [

                    //First Trainer Widget
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrainerProfile()));
                        },
                        child: Container(
                          height: 230,
                          width: 220,
                          //Decoration
                          decoration: BoxDecoration(
                            //border: OutlineInputBorder()
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFFCACACA), width: 1),

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Load Trainer Image
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(AppImage.trainerImg),
                                ),

                                Text('John Smith',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.black
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.star,
                                        color: Color(0XFFF69000),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Text('4.5',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        color: Colors.black
                                    ),),
                                  ],
                                ),

                                Text("10+ Years  \$50/hour ",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF4D4D55),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text('View Details',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      color: Colors.black,

                                    ),),
                                    SizedBox(width: 20,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // Padding inside the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFB2D235), // Background color
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward, // Left arrow icon
                                        color: Colors.black, // Icon color
                                        size: 24, // Icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),

                    SizedBox(width: 10,),
                    //Second Trainer Widget
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrainerProfile()));
                        },
                        child: Container(
                          height: 230,
                          width: 220,
                          //Decoration
                          decoration: BoxDecoration(
                            //border: OutlineInputBorder()
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFFCACACA), width: 1),

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Load Trainer Image
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(AppImage.trainerImg),
                                ),

                                Text('John Smith',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.black
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.star,
                                        color: Color(0XFFF69000),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Text('4.5',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        color: Colors.black
                                    ),),
                                  ],
                                ),

                                Text("10+ Years  \$50/hour ",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF4D4D55),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text('View Details',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      color: Colors.black,

                                    ),),
                                    SizedBox(width: 20,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // Padding inside the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFB2D235), // Background color
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward, // Left arrow icon
                                        color: Colors.black, // Icon color
                                        size: 24, // Icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              ),

              //Third Row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //Third Row
                child: Row(
                  children: [

                    //First Trainer Widget
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrainerProfile()));
                        },
                        child: Container(
                          height: 230,
                          width: 220,
                          //Decoration
                          decoration: BoxDecoration(
                            //border: OutlineInputBorder()
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFFCACACA), width: 1),

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Load Trainer Image
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(AppImage.trainerImg),
                                ),

                                Text('John Smith',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.black
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.star,
                                        color: Color(0XFFF69000),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Text('4.5',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        color: Colors.black
                                    ),),
                                  ],
                                ),

                                Text("10+ Years  \$50/hour ",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF4D4D55),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text('View Details',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      color: Colors.black,

                                    ),),
                                    SizedBox(width: 20,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // Padding inside the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFB2D235), // Background color
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward, // Left arrow icon
                                        color: Colors.black, // Icon color
                                        size: 24, // Icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),

                    SizedBox(width: 10,),
                    //Second Trainer Widget
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrainerProfile()));
                        },
                        child: Container(
                          height: 230,
                          width: 220,
                          //Decoration
                          decoration: BoxDecoration(
                            //border: OutlineInputBorder()
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0XFFCACACA), width: 1),

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Load Trainer Image
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(AppImage.trainerImg),
                                ),

                                Text('John Smith',style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.black
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.star,
                                        color: Color(0XFFF69000),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Text('4.5',style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        color: Colors.black
                                    ),),
                                  ],
                                ),

                                Text("10+ Years  \$50/hour ",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF4D4D55),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text('View Details',style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      color: Colors.black,

                                    ),),
                                    SizedBox(width: 20,),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // Padding inside the circle
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0XFFB2D235), // Background color
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward, // Left arrow icon
                                        color: Colors.black, // Icon color
                                        size: 24, // Icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],

      ),
    );
  }
}
