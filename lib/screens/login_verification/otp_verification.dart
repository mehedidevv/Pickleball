import 'package:flutter/material.dart';
import 'package:pickball/Widget/getOtpWidget.dart';
import 'package:pickball/screens/login_verification/reset_password_screen.dart';

import '../../components/constrains.dart';


class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
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

              SizedBox(
                height: 20,
              ),

              //Random Text
              Text(
                'Verify Your Identity',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                "For your security, verify the code sent to your registered contact. Let’s confirm it’s you!",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20,),

              //Get Otp Widget
              getOtp(),

              SizedBox(
                height: 20,
              ),

              //Navigate To Otp Reset Password Screen
              GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF007FF5),
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  child: Center(child: Text('Confirm'
                      ,style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),)),
                ),
              ),

              SizedBox(height: 30,),

              //Text Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text('Resend Code in ',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      letterSpacing: 0.2
                  ),),

                  Text('53',style:
                  TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18.0,
                      letterSpacing: 0.2
                  ),),
                  SizedBox(width: 5,),
                  Text('s',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      letterSpacing: 0.2
                  ),),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
