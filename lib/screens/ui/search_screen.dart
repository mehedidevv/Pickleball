import 'package:flutter/material.dart';
import 'package:pickball/appImage.dart';

import '../../components/constrains.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [

            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sessions',style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1
                  ),),

                  SizedBox(
                    width: 50,
                  ),
                  Text('Trainers',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    letterSpacing: 1
                  ),),
                ],
              ),),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search Anything',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13.0), // Add some padding to the image
                        child: Image.asset(AppImage.searchIcon2, // Path to your image asset
                          width: 24, // Set a size for the image
                          height: 24,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.blue,width: 1),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            //Search View


          ],
        ),

      ),
    );
  }
}
