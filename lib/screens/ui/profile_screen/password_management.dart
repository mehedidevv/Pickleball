import 'package:flutter/material.dart';

import '../../../appImage.dart';
import '../../../components/constrains.dart';

class PasswordManagement extends StatefulWidget {
  const PasswordManagement({super.key});

  @override
  State<PasswordManagement> createState() => _PasswordManagementState();
}

class _PasswordManagementState extends State<PasswordManagement> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        //App Bar
        appBar: AppBar(
          leading:
          // Arrow Back Icon
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                  padding: EdgeInsets.all(10), // Padding inside the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200], // Background color
                  ),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Icon(Icons.arrow_back),
                  )
              ),
            ),
          ),
          title: Text(
            'Password Management',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                color: Color(0XFF305FA1)),
          ),
        ),

        body: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              SizedBox(
                height: 30,
              ),

              //Text For Current Password
              Text(
                'Current Password',
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
                  hintText: 'Current Password',
                  labelText: 'Current Password',
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //Text For New Password
              Text(
                'New Password',
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

              // Text Confirm Password Password
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
              //TextField For Confirm Password
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

              SizedBox(height: 30,),
              // Update Password Button
              Center(
                child: SizedBox(
                  width: 250,
                  height: 80,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(AppImage.updatePassword)),
                ),
              ),

          ]
        ),
      ),
    ));
  }
}
