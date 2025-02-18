import 'package:flutter/material.dart';
import 'package:pickball/screens/login_verification/log_in.dart';
import '../../components/constrains.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Reset Password',
                    style: kLogInTextStyle,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.center,
                child: Text(
                  'Set Your New Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Align(
                alignment: Alignment.center,
                child: Text(
                  'Create a new Password to Secure Your Account',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //Enter New Password
              Text(
                'Enter New Password',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
              ),

              SizedBox(
                height: 10,
              ),
              //TextField For Password
              TextField(
                obscureText: _isObscure,
                decoration: kInputDecoration.copyWith(
                  suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure
                            ? Icons.visibility_off
                            : Icons.visibility, // Change icon dynamically
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure; // Toggle visibility
                        });
                      }),
                  hintText: 'New Password',
                  labelText: 'New Password',
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //Confirm Password Password
              Text(
                'Confirm Password',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
              ),

              SizedBox(
                height: 10,
              ),
              //TextField For Password
              TextField(
                obscureText: _isObscure,
                decoration: kInputDecoration.copyWith(
                  suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure
                            ? Icons.visibility_off
                            : Icons.visibility, // Change icon dynamically
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure; // Toggle visibility
                        });
                      }),
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Password',
                ),
              ),

              SizedBox(
                height: 30,
              ),
              //Update Password
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()));
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
                  child: Center(
                      child: Text(
                    'Update Password',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
