import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pickball/components/constrains.dart';
import 'package:pickball/screens/home_screen.dart';
import 'package:pickball/screens/login_verification/forgot_password_screen.dart';
import 'package:pickball/screens/sign_up.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscure = true;
  bool isChecked = false;

  //TODO Text Editing Controller
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  //
  //
  // //TODO Method For Log In
  // void _login()  {
  //   final String email = _emailController.text.toString();
  //   final String password = _passwordController.text.toString();
  //
  //   if (email.isEmpty || password.isEmpty) {
  //     // Show an error message if fields are empty
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Please Enter Your email and password')),);
  //   } else{
  //      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //   }
  // }


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
                  // //TODO For Circular Box
                  // InkWell(
                  //   onTap: () {
                  //     // Navigate To Previous Screen
                  //     // Navigator.pop(context);
                  //   },
                  //   borderRadius: BorderRadius.circular(20), // Circular shape
                  //   child: Container(
                  //     padding: EdgeInsets.all(10), // Padding inside the circle
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       color: Colors.grey[200], // Background color
                  //     ),
                  //     child: Icon(
                  //       Icons.arrow_back, // Left arrow icon
                  //       color: Colors.black, // Icon color
                  //       size: 24, // Icon size
                  //     ),
                  //   ),
                  // ),
                  //
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Text(
                    'Log In',
                    style: kLogInTextStyle,
                  ),
                ],
              ),

              SizedBox(
                height: 40,
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
                height: 40,
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
                //controller: _emailController,
                decoration: kInputDecoration.copyWith(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'Enter Your Mail',
                    labelText: 'Email'),
              ),

              SizedBox(
                height: 30,
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
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF007FF5),
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
      ),
    );
  }
}
