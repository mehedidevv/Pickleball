
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class getOtp extends StatelessWidget {
  const getOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController otpCtrl = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PinCodeTextField(
          controller: otpCtrl,
          length: 4,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
              borderWidth: 1,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              activeColor: Colors.blue,     // Border color when typing
              inactiveColor: Colors.grey[200],   // Border color when inactive
              selectedColor: Colors.green,  // Border color when selected
              fieldHeight: 70,
              fieldWidth: 70,
              activeFillColor: Colors.white,
              inactiveFillColor: Colors.white,
              selectedFillColor: Colors.white),
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          enableActiveFill: true,
          appContext: context,
        ),
      ],
    );;
  }
}
