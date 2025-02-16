import 'package:flutter/material.dart';

import '../../appImage.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  String selectedText = 'Confirm'; // Default selected text

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            //Row For Sessions And Trainers
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Confirm Text
                  GestureDetector(

                    onTap: () {
                      setState(() {
                        selectedText = 'Confirm';
                      });
                    },

                    child: Text('Confirm',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: selectedText == 'Confirm' ? Colors.blue : Colors.black,
                      decoration: selectedText == 'Confirm' ? TextDecoration.underline : TextDecoration.none,
                      decorationColor: selectedText == 'Confirm' ? Colors.blue : Colors.transparent,
                    ),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  //Trainer Text
                  GestureDetector(
                    //On Click Functionality
                    onTap: () {
                      setState(() {
                        selectedText = 'WaitList';
                      });
                    },
                    //Text For Trainers
                    child: Text('WaitList',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: selectedText == 'WaitList' ? Colors.blue : Colors.black,
                      decoration: selectedText == 'WaitList' ? TextDecoration.underline : TextDecoration.none,
                    ),),
                  ),
                ],
              ),),

            //Row For Searching And Filtering
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              child: Row(
                children: [
                  //Text Field For Search View
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 7.0),
                        labelText: 'Search Anything',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(14.0), // Add some padding to the image
                          child: Image.asset(AppImage.searchIcon2, // Path to your image asset
                            width: 24, // Set a size for the image
                            height: 24,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Color(0XFF000000).withOpacity(0.1),width: 1),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),
                  //Adding Filter Icon
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(AppImage.filterIcon))
                ],
              ),
            ),

            //Applying Stack Method
            Expanded(
              child: Stack(
                children: [
                  // Session Container
                  if (selectedText == 'Confirm')
                  //TODO ConfirmList Container
                    ConfirmListContainer(),
                  // Session Container
                  if (selectedText == 'WaitList')
                  //TODO ConfirmList Container
                    ConfirmListContainer()

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

// ConfirmList Container Implementation
class ConfirmListContainer extends StatelessWidget {
  const ConfirmListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         Column(
          children: [
            SingleConfirmList(),
            SingleConfirmList(),
            SingleConfirmList(),
            SingleConfirmList(),
          ],
        ),
      ],

    );



  }
}

//Single Confirm List
class SingleConfirmList extends StatelessWidget {
  const SingleConfirmList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10,left: 10,right: 10),
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
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Row For Profile And Name
              Row(
                children: [
                  //Load Trainer Image
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(AppImage.trainerImg),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Coach John Smith')
                ],
              ),

              //Text For Double Strategy MasterClass
              Text('Double Strategy MasterClass'),
              
              //ROW For Date And Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Another Row For Date
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(AppImage.filterIcon),
                      ),

                      Text('25 January 2025'),
                    ],
                  ),

                  //Another Row For Time
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(AppImage.filterIcon),
                      ),

                      Text('2.00 PM - 3.00 PM'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

