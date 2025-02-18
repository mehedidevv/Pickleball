import 'package:flutter/material.dart';
import 'package:pickball/screens/signup_verification/otp_code_screen.dart';

import '../../components/constrains.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              //First Row For Verify And Back Arrow
              Row(

                children: [
                  InkWell(
                    onTap: () {
                      // Navigate To Previous Screen
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(20), // Circular shape
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
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Verify',
                    style: kLogInTextStyle,
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),

              //Random Text
              Text(
                'Select Which Contact Details Should We Send The Code',
                textAlign: TextAlign.center,
                style: kRandomTextStyle,
              ),
              SizedBox(height: 15,),

              //Container For Middle Widget
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  //border: OutlineInputBorder()
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0XFFCACACA),width: 1),// Rounded corners
                ),
               child: Row(
                 children: [
                   //ICon
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: InkWell(
                       borderRadius: BorderRadius.circular(30), // Circular shape
                       child: Container(
                         padding: EdgeInsets.all(20), // Padding inside the circle
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.grey[200], // Background color
                         ),
                         child: Icon(
                           Icons.email, // Left arrow icon
                           color: Colors.blue, // Icon color
                           size: 30, // Icon size
                         ),
                       ),
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Via Email:',style: TextStyle(
                           color: Color(0XFF4D4D55),
                           fontSize: 12.0,
                           fontWeight: FontWeight.w500,
                           fontFamily: 'Roboto',
                         ),),
                         SizedBox(height: 10,),

                         Text('abc@gmail.com',style: TextStyle(
                           fontFamily: 'Roboto',
                           fontSize: 12,
                           fontWeight: FontWeight.bold
                         ),),
                       ],
                     ),
                   )
                 ],
               ),
              ),

              SizedBox(
                height: 30,
              ),

              //Button
              GestureDetector(
                onTap: (){
                 //TODO
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpCodeScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(

                    //Applying Linear Color
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFF007FF5), Color(0XFF003A71)],
                    ),
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  child: Center(child: Text('Continue',style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
