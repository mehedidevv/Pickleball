import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/home_screen.dart';

import '../../../appImage.dart';


class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

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

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(
              child: Stack(
                clipBehavior: Clip.none, // Allows the floating icon to overflow
                children: [
                  // Main Card
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white, // White card background
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 5), // Subtle shadow below card
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Fit content
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(height: 50),
                        // Space for floating icon
                        Text(
                          "Payment Total",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "\$89.99",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),

                        //Row For Date
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Date',style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              color: Color(0XFF9FA2AB)
                            ),
                            ),
                            Text('11 December 2025',style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF33363F)
                            ),),
                          ],
                        ),

                        //Row For Transaction Id
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Transaction ID',style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: Color(0XFF9FA2AB)

                            ),),
                            Text('#123456789',style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF33363F)
                            ),),
                          ],
                        ),

                        //Row For Account
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Account',style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: Color(0XFF9FA2AB)

                            ),),
                            Text('Neeraj',style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF33363F)
                            ),),
                          ],
                        ),

                        SizedBox(height: 15),
                        Divider(color: Colors.grey.shade300), // Thin divider line

                        //Row For Total Payment
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Payment',style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: Color(0XFF9FA2AB)

                            ),),
                            Text('89.99\$',style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF33363F)
                            ),),


                          ],
                        ),

                        //Row For Total
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total',style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: Color(0XFF33363F)

                              ),),
                              Text('89.99\$',style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFF33363F)
                              ),),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Floating Check Icon
                  Positioned(
                    top: -25, // Moves icon above the card
                    left: 0,
                    right: 0,
                    child:  SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset(AppImage.paymentSuccess),
                    ),
                  ),
                ],
              ),
            ),

            //Proceed to Pay Button
            Padding(
              padding: EdgeInsets.only(top: 40,left: 20,right: 20),
              child: OutlinedButton(

                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 1), // Blue border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  backgroundColor: Colors.transparent, // Light background
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80), // Button padding
                ),
                onPressed: () {
                  //TODO Navigate to Payment Confirmation Screen

                },

                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(AppImage.downloadIcon),
                    ),

                    SizedBox(width: 10,),

                    Text(
                      'Proceed to Pay',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Blue text color
                      ),
                    ),
                  ],
                )
              ),
            ),

            SizedBox(height: 20,),
            //Row For Back TO Home Page
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    //Navigate TO Home Page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Icon(Icons.arrow_back,color: Color(0XFF305FA1),),
                  ),
                ),
                SizedBox(width: 10,),
                Text('Go To HomePage',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF305FA1)
                ),),
              ],
            )
          ],

        ),
      ),
    );
  }
}
