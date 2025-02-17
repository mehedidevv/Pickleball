import 'package:flutter/material.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/components/constrains.dart';


class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
                  )
              ),
            ),
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                color: Color(0XFF305FA1)),
          ),
        ),


        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile image (CircleAvatar)
                  Center(
                    child: CircleAvatar(
                      radius: 50, // Circle size
                      backgroundImage: AssetImage(AppImage.profileImg), // Replace with your image asset
                    ),
                  ),
                  SizedBox(height: 20),

                  // Name TextField
                  Text('Name',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF2F2F36)
                  ),),
                  SizedBox(
                    height: 7,
                  ),
                  TextField(
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Mehedi Hasan'
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Name TextField
                  Text('Email',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF2F2F36)
                  ),),
                  SizedBox(
                    height: 7,
                  ),
                  TextField(
                    decoration: kInputDecoration.copyWith(
                        hintText: 'mehediexample123@gmail.com'
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Name TextField
                  Text('Age',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF2F2F36)
                  ),),
                  SizedBox(
                    height: 7,
                  ),
                  TextField(
                    decoration: kInputDecoration.copyWith(
                        hintText: '24'
                    ),

                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Name TextField
                  Text('Contact',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF2F2F36)
                  ),),
                  SizedBox(
                    height: 7,
                  ),
                  TextField(
                    decoration: kInputDecoration.copyWith(
                        hintText: '+1234567889'
                    ),

                  ),


                  SizedBox(
                    height: 30,
                  ),
                  // Save Changes Button
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 80,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Image.asset(AppImage.saveChangesBtn)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
