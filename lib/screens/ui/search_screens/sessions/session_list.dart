import 'package:flutter/material.dart';
//Session Widget
import 'package:pickball/screens/ui/search_screens/sessions/session_screen.dart';

import '../../../../Widget/SingleChildContainer.dart';

class SessionsWidget extends StatelessWidget {
  const SessionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [

            Padding(
              padding: EdgeInsets.only(left: 10,top: 0,right: 10),
              child: GestureDetector(
                //OnClick Function
                onTap: (){
                  //TODO On Click Function for go to Session Screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen()));
                },

                child: Container(
                  width: double.infinity,
                  child: SingleChildContainer(height: double.infinity, width: double.infinity),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              child: GestureDetector(
                //On Click Function
                onTap: (){
                  //Todo On Click Function
                  //TODO On Click Function for go to Session Screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen()));
                },

                child: Container(
                  width: double.infinity,
                  // color: Colors.blueAccent,
                  child: SingleChildContainer(height: double.infinity, width: double.infinity),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 0,right: 10),
              child: GestureDetector(
                //OnClick Function
                onTap: (){
                  //TODO On Click Function for go to Session Screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen()));
                },

                child: Container(
                  width: double.infinity,
                  child: SingleChildContainer(height: double.infinity, width: double.infinity),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              child: GestureDetector(
                //On Click Function
                onTap: (){
                  //Todo On Click Function
                  //TODO On Click Function for go to Session Screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen()));
                },

                child: Container(
                  width: double.infinity,
                  // color: Colors.blueAccent,
                  child: SingleChildContainer(height: double.infinity, width: double.infinity),
                ),
              ),
            ),
          ],

        ),
      ],

    );
  }
}