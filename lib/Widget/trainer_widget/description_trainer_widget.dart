import 'package:flutter/material.dart';

//ReviewForDescription Widget
class descriptionForTrainer extends StatelessWidget {
  const descriptionForTrainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Text For Bio
                Text('Bio',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF2F2F36),
                ),),

                //Text For Description
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("With over 12 years of coaching experience, Coach John specializes in doubles strategy,"
                      " footwork mastery, and tournament preparation. An IPTPA-certified instructor and former national champion,"
                      "he has helped players of all levels refine their technique and elevate their game. "
                      "Passionate about precision and strategy, Coach John’s training focuses on building confidence, "
                      "smart shot selection, and court awareness. Whether you're a beginner or a competitive player, "
                      "his tailored coaching approach ensures measurable improvement and on-court success. 🎾🔥",

                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),
                ),

                //Text For Achievement
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Achievement',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF2F2F36),
                  ),),
                ),

                //Column For Achievement Text Description
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //First Row
                    Text('Certified IPTPA Level II Coach – ',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF4D4D55)
                    ),),
                    Text('Recognized for excellence in player development',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),

                    //Second Row
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Coached 100+ Players to Tournament Wins – ',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF4D4D55)
                      ),),
                    ),
                    Text('Including state and national titles',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),


                    //Third Row
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Former Professional Player – ',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF4D4D55)
                      ),),
                    ),
                    Text('Competed in [League/Tournament Name] at an elite level',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),


                    //Fourth Row
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Featured Speaker at Pickleball Summits – ',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF4D4D55)
                      ),),
                    ),
                    Text('Conducted training workshops and strategy sessions',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),

                    //Fifth Row
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Top-Ranked Doubles Player – ',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF4D4D55)
                      ),),
                    ),
                    Text('Dominated competitive circuits',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),

                    //Sixth Row
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Developed Training Programs for Elite Players – ',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF4D4D55)
                      ),),
                    ),
                    Text(' Customized drills and performance-based coaching',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF4D4D55)
                    ),),

                  ],
                ),

                //Column For Coaching Expertise
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('Coaching Expertise',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Doubles Strategy',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Tournament Coach',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),
                    ),
                  ],
                ),



                //Column For Availability
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text For Availability
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('Availability',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Mom - Sat',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),
                    ),
                  ],
                ),



                //Column For Skill Level
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text For Skill Level
                      Text('Skill Level',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),

                      Padding(
                        padding: EdgeInsets.only(top: 5,left: 10),
                        child: Text('• Beginner',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF2F2F36),
                        ),),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 5,left: 10),
                        child: Text('• Intermediate',style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF2F2F36),
                        ),),
                      ),

                    ],
                  ),
                ),


                //Column For Time Slot
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text For Skill Level
                      Text('Time Slot',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2F2F36),
                      ),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //First Column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Time: 60 Minutes',style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF4D4D55)
                              ),),
                              Text('Duration: 2.00PM - 3.00PM',style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF4D4D55)
                              ),),
                            ],
                          ),

                          //Second Column
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Time: 60 Minutes',style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFF4D4D55)
                                ),),
                                Text('Duration: 2.00PM - 3.00PM',style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFF4D4D55)
                                ),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )


              ],
            )
          ],
        ),
      ),
    );
  }
}