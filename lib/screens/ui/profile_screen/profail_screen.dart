import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickball/screens/ui/profile_screen/aboutus_screen.dart';
import 'package:pickball/screens/ui/profile_screen/history/history_screen.dart';
import 'package:pickball/screens/ui/profile_screen/password_management.dart';
import 'package:pickball/screens/ui/profile_screen/privacy_security_Screen.dart';
import 'package:pickball/screens/ui/profile_screen/profile_notification_screen.dart';
import 'package:pickball/screens/ui/profile_screen/terms_condition_screen.dart';
//import 'package:pickball/screens/ui/booking_scrteens/profile_screen/edit_profile.dart';

import '../../../../appImage.dart';
import 'edit_profile.dart';

class ProfailScreen extends StatefulWidget {
  const ProfailScreen({super.key});

  @override
  State<ProfailScreen> createState() => _ProfailScreenState();
}

class _ProfailScreenState extends State<ProfailScreen> {

  File? _image; // To store the picked image
  // Function to pick image from camera
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera); // Open camera

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Store the picked image
      });
    }
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
                  )
              ),
            ),
          ),
          title: Text(
            'Profile Screen',
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
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //Profile Image With Camera
                Stack(
                  alignment: Alignment.bottomRight, // Position the icon to the bottom-right
                  children: [
                    // Profile Image inside CircleAvatar
                    CircleAvatar(
                      radius: 50, // The radius of the circle
                      backgroundImage: _image == null
                          ? AssetImage(AppImage.profileImg) // Default profile image
                          : FileImage(_image!), // If image is picked, use the new image
                    ),

                    // Implementing Camera Icon
                    Positioned(
                      bottom: 0, // Position at the bottom
                      right: 0,  // Position at the right
                      child: GestureDetector(
                        onTap: _pickImage, // Open camera on tap
                        child: CircleAvatar(
                          radius: 20, // Size of the icon background circle
                          backgroundColor: Color(0XFF313131), // Background color of the icon circle
                          child: Icon(
                            Icons.camera_alt, // Camera icon
                            color: Colors.white, // Icon color
                            size: 20, // Icon size
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: 10,
                ),
                Text('Mehedi Hasan',style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF2F2F36)
                ),),

                SizedBox(
                  height: 20,
                ),


                //History Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.timerIcon),
                              ),

                              SizedBox(width: 15,),
                              Text('History',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen()));
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                //Edit Profile Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.editIcon),
                              ),

                              SizedBox(width: 15,),
                              Text('Edit Profile',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        //Arrow Forward Icon
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                                onTap: (){
                                  //Navigate to Edit Profile
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                                },
                                child: Icon(Icons.arrow_forward_ios)),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                //Password Management Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.passwordKey),
                              ),

                              SizedBox(width: 15,),
                              Text('Password Management',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordManagement()));
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                //Notification Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.notificationProfile),
                              ),

                              SizedBox(width: 15,),
                              Text('Notification',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileNotificationScreen()));
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                //About Us Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.privacyIcon),
                              ),

                              SizedBox(width: 15,),
                              Text('About Us',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutusScreen()));
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                //Privacy And Security Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.privacyIcon),
                              ),

                              SizedBox(width: 15,),
                              Text('Privacy And Security',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacySecurityScreen()));
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                // Terms And Conditions Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.privacyIcon),
                              ),

                              SizedBox(width: 15,),
                              Text('Terms & Condition',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF2F2F36)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TermsConditionScreen()));
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ),

                //Logout  Container
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    //Decoration
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: OutlineInputBorder()
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0XFFCACACA), width: 1), // Rounded corners
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Row For Timer And History Text
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(AppImage.logOutIcon,color: Color(0XFFA13430),),
                              ),

                              SizedBox(width: 15,),
                              Text('Log Out',style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFA13430)
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )

                      ],
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
