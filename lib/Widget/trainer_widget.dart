import 'package:flutter/material.dart';

import '../appImage.dart';

class TrainerWidget extends StatelessWidget {
  const TrainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 220,
      //Decoration
      decoration: BoxDecoration(
        //border: OutlineInputBorder()
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0XFFCACACA), width: 1),

      ),

      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Load Trainer Image
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(AppImage.trainerImg),
            ),

            Text('John Smith',style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                color: Colors.black
            ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                  height: 30,
                  width: 30,
                  child: Icon(Icons.star,
                    color: Color(0XFFF69000),
                  ),
                ),

                SizedBox(width: 10,),

                Text('4.5',style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Colors.black
                ),),
              ],
            ),

            Text("10+ Years  \$50/hour ",style: TextStyle(
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: Color(0XFF4D4D55),
            ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text('View Details',style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  color: Colors.black,

                ),),
                SizedBox(width: 20,),
                Container(
                  padding: EdgeInsets.all(5),
                  // Padding inside the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFB2D235), // Background color
                  ),
                  child: Icon(
                    Icons.arrow_forward, // Left arrow icon
                    color: Colors.black, // Icon color
                    size: 24, // Icon size
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