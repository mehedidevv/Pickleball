import 'package:flutter/material.dart';
import 'package:pickball/screens/signup_verification/verify_screen.dart';

import '../components/constrains.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Implement Fist Row
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
                    'Create Account',
                    style: kLogInTextStyle,
                  ),
                ],
              ),

              SizedBox(
                height: 80,
              ),

              //For UserName
              Text(
                'Name',
                style: kEmailTextStyle,
              ),

              SizedBox(
                height: 10,
              ),

              //TextField For Email
              TextField(
                decoration: kInputDecoration.copyWith(
                    hintText: 'Name',
                    labelText: 'Name'),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'Email Address',
                style: kEmailTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              //TextField For Email
              TextField(
                decoration: kInputDecoration.copyWith(
                    //prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'Enter Your Mail',
                    labelText: 'Email'),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'Password',
                style: kPasswordTextStyle,
              ),
              //TextField For Password
              TextField(
                decoration: kInputDecoration.copyWith(
                  //  suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Enter Your Password',
                    labelText: 'Password'),
                obscureText: true,
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'Password',
                style: kPasswordTextStyle,
              ),
              TextField(
                decoration: kInputDecoration.copyWith(
                  //  suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Enter Your Password',
                    labelText: 'Confirm Password'),
                obscureText: true,
              ),

              SizedBox(
                height: 20,
              ),

              // Align(
              //   alignment: Alignment.topRight,
              //   child: Text(
              //     'Forgot the Password?',
              //     style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //         color: Colors.black,
              //         fontFamily: 'Roboto'
              //     ),
              //   ),
              // ),

              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF007FF5),
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  child: Center(child: Text('Continue',style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),)),
                ),
              ),

              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Already Have Account?",
              //       style: TextStyle(fontSize: 16,
              //           fontFamily: 'Roboto',
              //           color: Colors.black),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     //Sign Up Widget
              //     GestureDetector(
              //       onDoubleTap: (){
              //         //TODO
              //         Navigator.pop(context);
              //       },
              //       child: Text(
              //         'Sign In',
              //         style: TextStyle(
              //             fontSize: 16,
              //             fontWeight: FontWeight.w700,
              //             fontFamily: 'Roboto',
              //             color: Colors.black),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
