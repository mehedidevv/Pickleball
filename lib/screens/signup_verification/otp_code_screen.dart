import 'package:flutter/material.dart';

import '../../components/constrains.dart';

class OtpCodeScreen extends StatelessWidget {
  const OtpCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
          child: Column(
            children: [
              //First Row For Verify And Back Arrow
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
                    'Verify',
                    style: kLogInTextStyle,
                  ),
                ],
              ),
              
              SizedBox(
                height: 70,
              ),
              
              Text('Code has been Send to abc@gmail.com',style: kRandomTextStyle,),

              SizedBox(
                height: 20,
              ),

              //OTP Row
              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        //border: OutlineInputBorder()
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0XFFCACACA),width: 1),// Rounded corners
                      ),

                      child: Align(
                          alignment: Alignment.center,
                          child: Text('5',style: kOtpTextStyle,)),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        //border: OutlineInputBorder()
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0XFFCACACA),width: 1),// Rounded corners
                      ),

                      child: Align(
                          alignment: Alignment.center,
                          child: Text('5',style: kOtpTextStyle,)),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        //border: OutlineInputBorder()
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0XFFCACACA),width: 1),// Rounded corners
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('5',style: kOtpTextStyle,)),
                    ),
                  ),

                  SizedBox(width: 10,),


                  Expanded(
                    child: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        //border: OutlineInputBorder()
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0XFFCACACA),width: 1),// Rounded corners
                      ),
                      
                      child: Align(
                        alignment: Alignment.center,
                          child: Text('5',style: kOtpTextStyle,)),
                    ),
                  ),


                ],
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

              SizedBox(height: 30,),
              //Button
              GestureDetector(
                onTap: (){
                  //TODO
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF007FF5),
                    borderRadius: BorderRadius.circular(25), // Rounded corners
                  ),
                  child: Center(child: Text('Verify Code',style: TextStyle(
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

