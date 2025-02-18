import 'package:flutter/material.dart';
import 'package:pickball/screens/ui/search_screens/trainer/trainer_widget/description_trainer_widget.dart';
import 'package:pickball/screens/ui/search_screens/trainer/trainer_widget/reviewfor_trainer_widget.dart';

import '../../../../Widget/trainer_profile.dart';



class TrainerProfile extends StatefulWidget {
  const TrainerProfile({super.key});

  @override
  State<TrainerProfile> createState() => _TrainerProfileState();
}

class _TrainerProfileState extends State<TrainerProfile> {

     String selectedText = 'Descriptions';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            //First Container Add Background Image
            TrainerProfile_Widget(),

            //Row For Descriptions And Reviews
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Descriptions Text
                  GestureDetector(

                    //On Tap Function
                    onTap: () {
                      setState(() {
                        selectedText = 'Descriptions';

                      });
                    },

                    child: Text('Descriptions',style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: selectedText == 'Descriptions' ? Color(0XFF94AF29) : Colors.black,
                      decoration: selectedText == 'Descriptions' ? TextDecoration.underline : TextDecoration.none,
                      decorationColor: selectedText == 'Descriptions' ? Color(0XFF94AF29) : Colors.transparent,
                    ),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  //Review Text
                  GestureDetector(

                    //onTap Function
                    onTap: () {
                      setState(() {
                        selectedText = 'Reviews';
                      });
                    },

                    child: Text('Reviews',style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: selectedText == 'Reviews' ? Color(0XFF94AF29) : Colors.black,
                      decoration: selectedText == 'Reviews' ? TextDecoration.underline : TextDecoration.none,
                      decorationColor: selectedText == 'Reviews' ? Color(0XFF94AF29) : Colors.transparent,
                    ),),
                  ),



                ],
              ),),

            //Using Stack For Descriptions and Reviews
            Expanded(
              child: Stack(
                children: [
                  // Session Container
                  if (selectedText == 'Descriptions')
                  //Description Widget
                    descriptionForTrainer(),
                  // Trainers Container
                  if (selectedText == 'Reviews')
                    ReviewForTrainer(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}







