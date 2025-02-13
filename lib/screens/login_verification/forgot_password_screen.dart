import 'package:flutter/material.dart';
import 'package:pickball/screens/login_verification/verify_screen.dart';

import '../../components/constrains.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
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
                    'Forgot Password',
                    style: kLogInTextStyle,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                'No Worries!',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                "Enter your registered email address or mobile number and we’ll send you instructions to reset your password. Let’s get you back on track quickly and securely!",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 40,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email Address',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //Container For Email Verification
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  //border: OutlineInputBorder()
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      color: Color(0XFFCACACA), width: 1), // Rounded corners
                ),

                child: Row(
                  children: [
                    //First Icon Email
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        // Circular shape
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // Padding inside the circle
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200], // Background color
                          ),
                          child: Icon(
                            Icons.email_outlined, // Left arrow icon
                            // color: Colors.white, // Icon color
                            size: 30, // Icon size
                          ),
                        ),
                      ),
                    ),

                    //Middle Text For Email
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child:  TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'abc@gmail.com',
                          ),
                        ),
                      ),

                    ),

                    //Choose Your Mail Option
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          //TODO
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyScreen()));
                        },
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          // Circular shape
                          child: Container(
                            padding: EdgeInsets.all(10),
                            // Padding inside the circle
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFF305FA1), // Background color
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_outlined, // Left arrow icon
                              // color: Colors.white, // Icon color
                              size: 30, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
