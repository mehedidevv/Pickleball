import 'package:flutter/material.dart';


//Reviews Widget For Sessions Screen
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [

              //First Row For Review
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('Review',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF33363F),
                  ),),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text('200 Review',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF33363F),
                        ),),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  )
                ],
              ),

              //Review List
              GivenReviewText(),
              GivenReviewText(),
              GivenReviewText(),
              GivenReviewText(),
              GivenReviewText(),
              GivenReviewText(),




            ],
          ),
        )
      ],
    );
  }
}


//Given Review Text
class GivenReviewText extends StatelessWidget {
  const GivenReviewText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //Text For Reviewer
          Row(
            children: [
              Text('Emily R',style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF4D4D55)

              ),),

              //Load Star Icon
              SizedBox(
                height: 30,
                width: 30,
                child: Icon(Icons.star,
                  color: Color(0XFFF69000),
                ),
              ),

              SizedBox(
                height: 30,
                width: 30,
                child: Icon(Icons.star,
                  color: Color(0XFFF69000),
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: Icon(Icons.star,
                  color: Color(0XFFF69000),
                ),
              ),

              SizedBox(
                height: 30,
                width: 30,
                child: Icon(Icons.star,
                  color: Color(0XFFF69000),
                ),
              ),

              SizedBox(
                height: 30,
                width: 30,
                child: Icon(Icons.star,
                  color: Color(0XFFF69000),
                ),
              ),


            ],
          ),

          //Text For Transform Game
          Text('Transformed My Game!',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0XFF4D4D55)
          ),),

          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('Coach John completely changed how I play doubles! '
                'His strategies helped me win my first tournament. Highly recommended!',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF4D4D55)
              ),),
          ),

          //Text For Date
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Align(
                alignment: Alignment.topRight,
                child: Text('December 20, 2024',style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF4D4D55)
                ),)),
          ),
          //Showing Line
          Container(
            height: 2, // Line thickness
            width: double.infinity, // Full width
            color: Color(0XFF000000).withOpacity(0.06), // Line color
            margin: EdgeInsets.symmetric(vertical: 10), // Space around the line
          ),


        ],
      ),
    );
  }
}