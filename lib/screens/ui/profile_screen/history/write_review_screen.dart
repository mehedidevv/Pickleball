import 'package:flutter/material.dart';

import '../../../../appImage.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {


  // List to store the state of each star (true = filled, false = empty)
  List<bool> _stars = [false, false, false, false, false]; // Initially all stars are empty

  // Function to handle click on Star Icon
  void _toggleStar(int index) {
    setState(() {
      _stars[index] = !_stars[index]; // Toggle the star's state
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //App Bar Implementation
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
                  )),
            ),
          ),
          title: Text(
            'Write Review',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                color: Color(0XFF305FA1)),
          ),
        ),

        body: ListView(
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Container For Training Program
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                      padding: EdgeInsets.only(left: 10, top: 8),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Training Program Button Button
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  //Cancel Button
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Light blue background
                                      border: Border.all(
                                          color: Color(0XFF94AF29), width: 2),
                                      // Blue border with width
                                      borderRadius: BorderRadius.circular(
                                          20), // Rounded corners
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
                                  )),
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
                                      backgroundImage:
                                      AssetImage(AppImage.trainerImg),
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

                //Star Icon And Slider
                Column(
                  children: [
                    //Row For 5 Star Icon And Slider
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Row For Star Icon And Text
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF33363F)),
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 8,
                            child: SizedBox(
                              height: 50,
                              width: 350,
                              child: Image.asset(AppImage.slider5),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Row For 4 Star Icon And Slider
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Row For Star Icon And Text
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF33363F)),
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 8,
                            child: SizedBox(
                              height: 10,
                              width: 350,
                              child: Image.asset(AppImage.slider4),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Row For 3 Star Icon And Slider
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Row For Star Icon And Text
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF33363F)),
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 8,
                            child: SizedBox(
                              height: 10,
                              width: 350,
                              child: Image.asset(AppImage.slider3),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Row For 2 Star Icon And Slider
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Row For Star Icon And Text
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF33363F)),
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 8,
                            child: SizedBox(
                              height: 10,
                              width: 350,
                              child: Image.asset(AppImage.slider2),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Row For 1 Star Icon And Slider
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Row For Star Icon And Text
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF33363F)),
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 8,
                            child: SizedBox(
                              height: 10,
                              width: 350,
                              child: Image.asset(AppImage.slider1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                // Implement Rating Option
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Centers the row horizontally
                    children: List.generate(5, (index) {

                      return GestureDetector(
                        onTap: () {
                          _toggleStar(index); // Toggle star state when clicked
                        },
                        child: Icon(
                          _stars[index] ? Icons.star : Icons.star_border, // Filled or empty star
                          color: _stars[index] ? Colors.orange : Colors.grey, // Orange for filled, grey for empty
                        ),
                      );
                    }),
                  ),),

                //Text For Share Your Opinion
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 10),
                  child: Text('Please Share Your Opinion', style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF33363F)
                  ),),
                ),

                //Text Field For Write Opinion
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                      hintText: 'Your Review',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0XFF000000).withOpacity(0.1),width: 1),
                      ),
                    ),

                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //Rebook Button
                Align(
                  alignment: Alignment.center,

                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Color(0XFF305FA1),
                        // Light blue background
                        border: Border.all(
                            color: Color(0XFF305FA1),
                            width: 1),
                        // Blue border with width
                        borderRadius:
                        BorderRadius.circular(20), // Rounded corners
                      ),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ],

        ),
      ),
    );
  }
}
