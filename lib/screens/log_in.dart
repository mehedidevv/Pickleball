import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pickball/components/constrains.dart';
import 'package:pickball/screens/sign_up.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  bool _isObscure = true;

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
//TODO For Circular Box
    InkWell(
        onTap: () {
            // Navigate To Previous Screen
           // Navigator.pop(context);
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
    'Log In',
    style: kLogInTextStyle,
    ),
    ],
    ),

    SizedBox(
    height: 70,
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
    obscureText: _isObscure,
    decoration: kInputDecoration.copyWith(
    suffixIcon: IconButton(
    icon: Icon(
    _isObscure ? Icons.visibility_off : Icons.visibility, // Change icon dynamically
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

    Align(
    alignment: Alignment.topRight,
    child: Text(
    'Forgot the Password?',
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: 'Roboto'
    ),
    ),
    ),

    SizedBox(
    height: 20,
    ),

    //Log In Button
    Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
    color: Color(0XFF007FF5),
    borderRadius: BorderRadius.circular(25), // Rounded corners
    ),
    child: Center(child: Text('Log In',style: TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w700
    ),)),
    ),

    SizedBox(
    height: 20,
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "Don't have Account?",
    style: TextStyle(fontSize: 16,
    fontFamily: 'Roboto',
    color: Colors.black),
    ),
    SizedBox(
    width: 15,
    ),
    //Sign Up Widget
    GestureDetector(
    onTap: (){
    //TODO
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
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
