import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/search_screens/sessions/session_screen.dart';

import '../appImage.dart';

class SingleChildContainer extends StatelessWidget {
  double height;
  double width;
  final VoidCallback? onpressed;

  SingleChildContainer({required this.height,required this.width,  this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 320,
      //Decoration For Container
      decoration: BoxDecoration(
        //border: OutlineInputBorder()
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0XFFCACACA), width: 1),

        image: DecorationImage(
          image: AssetImage(AppImage.backgroundImage),
          // Load from assets
          fit: BoxFit.cover, // Adjust image size
        ),
      ),


      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen()));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0XFFD9D9D9).withOpacity(0.2),
          ),

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //First Row
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  
                      Text(
                        'Doubles Strategy Masterclass',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFFFFFFFF)),
                      ),
                  
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // Padding inside the circle
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[350], // Background color
                          ),
                          child: Icon(
                            Icons.star_border, // Left arrow icon
                            color: Colors.black, // Icon color
                            size: 20, // Icon size
                          ),
                  
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Text(
                    'Master the art of playing doubles in this comprehensive session designed for intermediate to advanced Pickleball players...',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFFFFFF)),
                  ),
                ),
                //Row For Date And Time
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Row For Date
                      Row(
                        children: [
                          Container(
                            // padding: EdgeInsets.all(10),
                            // Padding inside the circle
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Colors.grey[350], // Background color
                            ),
                            child: Icon(
                              Icons.calendar_month, // Left arrow icon
                              color: Colors.white, // Icon color
                              size: 20, // Icon size
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '25 January 2025',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFFFFFF)),
                          ),
                        ],
                      ),
                  
                      //Row For Time
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            // Padding inside the circle
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Colors.grey[350], // Background color
                            ),
                            child: Icon(
                              Icons.access_time_rounded, // Left arrow icon
                              color: Colors.white, // Icon color
                              size: 20, // Icon size
                            ),
                          ),
                          Text(
                            '2 PM to 3 PM',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFFFFFF)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                //For Beginner Per Person
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        // Padding inside the circle
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        child: Text(
                          'Beginner',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF59FF00)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        // Padding inside the circle
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                          color: Colors.black.withOpacity(0.2), // Background color
                        ),
                        child: Text(
                          "25 \$  Per Season",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF59FF00)),
                        ),
                      ),
                    ],
                  ),
                ),

                //Bottom Row
                //For Align Bottom
                //Spacer(),

                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Location Icon
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(AppImage.location,scale: 3,)
                        ),
                      ),
                  
                      //Sunset Pickle Ball
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          //Sunset Pickle Ball
                          child: Column(
                            children: [
                              Text(
                                'Sunset Pickle Ball',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0XFFFFFFFF)),
                              ),
                              Text(
                                'Sunset Pickle Ball',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0XFFFFFFFF)),
                              ),
                            ],
                          ),
                        ),
                      ),
                  
                      //View Details Text
                      Expanded(
                        flex: 3,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            //View Details Text
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFFFFFFF),
                              ),
                            )),
                      ),
                  
                      //Forward Arrow Icon
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            // Navigate To Previous Screen
                            // Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(20),
                          // Circular shape
                          child: Container(
                            padding: EdgeInsets.all(5),
                            // Padding inside the circle
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFFB2D235), // Background color
                            ),
                            child: Icon(
                              Icons.arrow_forward, // Left arrow icon
                              color: Colors.white, // Icon color
                              size: 24, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}