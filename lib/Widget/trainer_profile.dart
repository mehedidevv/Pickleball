import 'package:flutter/material.dart';
import 'package:pickball/Widget/single_trainer_widget.dart';
import 'package:pickball/screens/ui/search_screens/search_screen.dart';

import '../appImage.dart';

//Trainer Profile Container Widget
class TrainerProfile_Widget extends StatelessWidget {
  const TrainerProfile_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      //Decoration For Container
      decoration: BoxDecoration(
        //border: OutlineInputBorder()
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0XFFCACACA), width: 1),

      ),

      child: Column(
        children: [
          //Implementing First Row
          Padding(
            padding: EdgeInsets.only(top: 30,left: 10),
            //Implementing First Row
            child: Row(
              children: [

                //Arrow Back Icon
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                    //print('Hello');
                  },
                  child: Container(
                    padding: EdgeInsets.all(10), // Padding inside the circle
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


                //Trainer Profile Text
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Trainer Profile',style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF305FA1),
                  ),),
                )
              ],
            ),
          ),

          //Column For Profile And Text
          Column(
            children: [
              //Load Trainer Image
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(AppImage.trainerImg),
              ),
              //Row For John Smith And Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //Text For John Smith
                  Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: Text('John Smith',style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: Colors.black
                    ),),
                  ),

                  Text('4.5',style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: Colors.black
                  ),),

                  SizedBox(width: 7,),
                  //Star Icon
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.star,
                      color: Color(0XFFF69000),
                    ),
                  ),



                ],
              )

            ],
          ),

          //Row For Experience And Pricing
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text For Experience
              Text('10+ Years \n Experience',style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF4D4D55)
              ),),
              //Row for Pricing
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text("\$50/",style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF4D4D55)
                    ),),

                    Text("hour",style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF4D4D55)
                    ),),
                  ],
                ),
              )
            ],
          ),

          //Row For Email And Call Trainer Button
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Button For Email
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0XFF305FA1), width: 1), // Blue border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16), // Button padding
                  ),
                  onPressed: () {
                    print("Email Button Pressed");
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Adjust button size to content
                    children: [

                      //Load Email Icon
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(AppImage.messageIcon),
                      ),
                      SizedBox(width: 8), // Space between icon and text
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF305FA1), // Blue text color
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 30,
                ),
                //Button For Call Trainer
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0XFF305FA1), width: 1), // Blue border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16), // Button padding
                  ),
                  onPressed: () {
                    print("Email Button Pressed");
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Adjust button size to content
                    children: [
                      //Load Call Trainer Icon
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(AppImage.callIcon),
                      ),
                      SizedBox(width: 8), // Space between icon and text
                      Text(
                        'Call Trainer',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF305FA1), // Blue text color
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )

        ],
      ),

    );
  }
}