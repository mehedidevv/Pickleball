import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pickball/components/constrains.dart';
import 'package:pickball/screens/ui/home_screen.dart';
import 'package:pickball/screens/login_verification/forgot_password_screen.dart';
import 'package:pickball/screens/signup_verification/sign_up.dart';
import 'package:pickball/screens/ui/ui_design.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscure = true;
  bool isChecked = false;


    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Implement Fist Row
                  Row(
                    children: [

                      Text(
                        'Log In',
                        style: kLogInTextStyle,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //Welcome Text
                  Text('Hi Welcome Back!',style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF33363F)
                  ),),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Sign in to continue exploring the best deals',style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF33363F)
                  ),),

                  SizedBox(
                    height: 30,
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
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Enter Your Mail',
                        labelText: 'Email'),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Text(
                    'Password',
                    style: kPasswordTextStyle,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //TextField For Password
                  TextField(
                    // controller: _passwordController,
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
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Check Box
                      Row(
                        children: [
                          Checkbox(
                              shape: CircleBorder(),
                              // Makes it round
                              checkColor: Colors.white,
                              // Tick color
                              activeColor: Colors.blue,
                              // Background color when checked
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),

                          Text('Remember me'),
                        ],
                      ),

                      GestureDetector(
                        onTap: () {
                          //TODO Navigate To Forgot Password Screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen()));
                        },
                        //Forgot Password Implementation
                        child: Text(
                          'Forgot the Password?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Log In Button
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UiDesign()));
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

                        //color: Color(0XFF007FF5),
                        borderRadius: BorderRadius.circular(25), // Rounded corners
                      ),
                      child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Text For Don't Have Account Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have Account?",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //Sign Up Widget
                      GestureDetector(
                        onTap: () {
                          //TODO
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                              color: Colors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
