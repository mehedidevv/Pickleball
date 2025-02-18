import 'package:flutter/material.dart';
import 'package:pickball/screens/login_verification/otp_verification.dart';

import '../../components/constrains.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
          child: Column(
            children: [
              //First Row For Back Arrow And Forgot Password
              Row(
                children: [
                  //TODO For Circular Box
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
                    width: 20,
                  ),
                  Text(
                    'Verify Your Email',
                    style: kLogInTextStyle,
                  ),
                ],
              ),

              SizedBox(height: 80,),
              //Add Email Logo
              SizedBox(
                height: 70,
                width: 70,
                child: Image.asset('assets/images/mail.png'),
              ),

              Text('Check Your Mail',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                fontSize: 20,
              ),),
              SizedBox(height: 10,),

              Text('Please check your email to verify your account.',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),),

              SizedBox(height: 40,),

              //Navigate To Otp Verification Screen
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerification()));
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
                  child: Center(child: Text('Confirm Now',style: TextStyle(
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
