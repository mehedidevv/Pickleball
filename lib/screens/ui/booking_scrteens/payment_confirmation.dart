import 'package:flutter/material.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/ui/booking_scrteens/payment_details.dart';

class PaymentConfirmation extends StatelessWidget {
  const PaymentConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Appbar
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
                  child: Image.asset(AppImage.close),
                )
              ),
            ),
          ),
          title: Text(
            'Payment Confirmation',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                color: Color(0XFF305FA1)),
          ),
        ),

        body: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //On Click TO Go Download Payment receipt
              GestureDetector(
                onTap: (){
                  //TODO
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentDetails()));
                },
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(AppImage.paymentSuccess),
                ),
              ),

              Center(
                child: Text(
                  'Payment Successful',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF33363F),
                  ),
                ),
              ),





            ],
          ),
        ),

      ),
    );
  }
}
