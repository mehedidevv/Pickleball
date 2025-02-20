import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/book_now/payment_confirmation.dart';

import '../../../appImage.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              // Row For Arrow Back And Booking Confirmation  Text
              Padding(
                padding: EdgeInsets.only(top: 30,),
                child: Row(
                  children: [
                    //Arrow Back Icon
                    GestureDetector(
                      onTap: () {
                        //Navigate To Previous Screen
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        // Padding inside the circle
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
                      'Booking Confirmation',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF305FA1)),
                    ),
                  ],
                ),
              ),

              //Container For Training Program
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  //Decoration
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: OutlineInputBorder()
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Color(0XFFCACACA), width: 1), // Rounded corners
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(left: 10,top: 8),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // Training Program Button Button
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(top: 0),
                                //Cancel Button
                                child:  Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // Light blue background
                                    border: Border.all(color: Color(0XFF94AF29), width: 2),
                                    // Blue border with width
                                    borderRadius:
                                    BorderRadius.circular(20), // Rounded corners
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Training Program',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0XFF94AF29),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),

                          //Row For Profile And Name
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  //Load Trainer Image
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(AppImage.trainerImg),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Coach John Smith',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFF4D4D55)),
                                  )
                                ],
                              ),
                            ),
                          ),

                          //Text For Double Strategy MasterClass
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Double Strategy MasterClass',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0XFF000000)),
                              ),
                            ),
                          ),

                          //ROW For Date And Time
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //Another Row For Date
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(AppImage.dateIcon),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '25 January 2025',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0XFF4D4D55)),
                                      ),
                                    ],
                                  ),

                                  //Another Row For Time
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(AppImage.clockIcon),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2.00 PM - 3.00 PM',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0XFF4D4D55)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
              ),

              //Row For Total Payment
              Padding(
                padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Payment',style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Robot',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF33363F)
                    ),),


                    Text('97\$',style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Robot',
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF33363F)
                    ),),

                  ],
                ),
              ),

              //Row For Pay With
              Padding(
                padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pay With',style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Robot',
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF33363F)
                    ),),

                  // Row For Add New Card
                  Row(
                    children: [
                      //Adding Add Icon
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(AppImage.addIcon),
                      ),
                      SizedBox(width: 10,),
                      Text('Add New Card',style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF606060)
                      ),)
                    ],
                  )

                  ],
                ),
              ),

              //Container For Bank Transaction
              AxisBankTransaction(),

              //Proceed to Pay Button
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: OutlinedButton(

                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0XFF305FA1), width: 2), // Blue border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                    ),
                    backgroundColor: Color(0XFF305FA1), // Light background
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Button padding
                  ),
                  onPressed: () {
                    //TODO Navigate to Payment Confirmation Screen
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentConfirmation()));
                  },

                  child: Text(
                    'Proceed to Pay',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFFFFFFF), // Blue text color
                    ),
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

//Axis Bank Transaction Widget
class AxisBankTransaction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10,top: 20),
      child: Container(
        height: 250,
        width: double.infinity,
        //Decoration
        decoration: BoxDecoration(
          color: Colors.white,
          //border: OutlineInputBorder()
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Color(0XFFF5F5F5), width: 1), // Rounded corners
        ),

        child: Column(
          children: [
            //Individual Bank Transaction
        Expanded(
          child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Container(
            height: 80,
            width: double.infinity,
            //Decoration
            decoration: BoxDecoration(
              color: Colors.white,
              //border: OutlineInputBorder()
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: Color(0XFFF5F5F5), width: 1), // Rounded corners
            ),

            child: Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                 // Adding Logo
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(AppImage.logoAxisBank),
                  ),

                  Text('Axis Bank',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF606060)
                  ),),

                  Text('***********87698',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF606060)
                  ),),

                ],
              ),
            ),

          ),),
        ),

            //Individual Bank Transaction
        Expanded(
          child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Container(
            height: 80,
            width: double.infinity,
            //Decoration
            decoration: BoxDecoration(
              color: Colors.white,
              //border: OutlineInputBorder()
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: Color(0XFFF5F5F5), width: 1), // Rounded corners
            ),

            child: Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Adding Logo
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(AppImage.visaBank),
                  ),

                  Text('HDFC Bank',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF606060)
                  ),),

                  Text('***********87698',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF606060)
                  ),),

                ],
              ),
            ),

          ),),
        ),

            // Row For Add New Card
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    //Adding Add Icon
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppImage.addIcon),
                    ),
                    SizedBox(width: 10,),
                    Text('Add New Card',style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF606060)
                    ),)
                  ],
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}

