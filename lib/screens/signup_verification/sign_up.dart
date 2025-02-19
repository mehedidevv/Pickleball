import 'package:flutter/material.dart';
import 'package:pickball/screens/signup_verification/verify_screen.dart';

import '../../components/constrains.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Implement Fist Row
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
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
              ),

              SizedBox(
                height: 60,
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
                'Confirm Password',
                style: kPasswordTextStyle,
              ),
              TextField(
                decoration: kInputDecoration.copyWith(
                  //  suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Confirm Password',
                    labelText: 'Confirm Password'),
                obscureText: true,
              ),

              SizedBox(
                height: 20,
              ),


              SizedBox(
                height: 20,
              ),
              //Continue Button
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyScreen()));
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
