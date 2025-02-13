import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../components/constrains.dart';
import '../../Widget/getOtpWidget.dart';

class OtpCodeScreen extends StatefulWidget {
  const OtpCodeScreen({super.key});

  @override
  State<OtpCodeScreen> createState() => _OtpCodeScreenState();
}

class _OtpCodeScreenState extends State<OtpCodeScreen> {

  final TextEditingController otpCtrl = TextEditingController();

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

             //TODO SignUp OTP Code Widget
              getOtp(),

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
  // Widget signUpOtpCode() {
  //
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       PinCodeTextField(
  //         controller: otpCtrl,
  //         length: 4,
  //         animationType: AnimationType.fade,
  //         keyboardType: TextInputType.number,
  //         pinTheme: PinTheme(
  //             borderWidth: 0.2,
  //             shape: PinCodeFieldShape.box,
  //             borderRadius: BorderRadius.circular(5),
  //             inactiveColor: Colors.grey, // Border color when not filled
  //             fieldHeight: 70,
  //             fieldWidth: 70,
  //             activeFillColor: Colors.white,
  //             inactiveFillColor: Colors.white,
  //             selectedFillColor: Colors.white),
  //         animationDuration: const Duration(milliseconds: 300),
  //         backgroundColor: Colors.transparent,
  //         enableActiveFill: true,
  //         appContext: context,
  //       ),
  //     ],
  //   );
  // }

}

