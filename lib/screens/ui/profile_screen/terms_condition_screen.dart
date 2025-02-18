import 'package:flutter/material.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

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
              'Terms & Condition',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF305FA1)),
            ),
          ),


          body: Padding(
            padding: EdgeInsets.only(top: 20,left: 10,right: 10),
            child: ListView(
              children: [

                Text('Terms & Condition',style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700
                ),),

                SizedBox(height: 20,),

                Text('Lorem ipsum dolor sit amet consectetur. Ultrices id feugiat '
                    'venenatis habitant mattis viverra elementum'
                    ' purus volutpat. Lacus eu molestie pulvinar rhoncus integer proin elementum. '
                    'Pretium sit fringilla massa '
                    'tristique aenean commodo leo. Aliquet viverra amet sit porta elementum et pellentesque posuere.'
                    ' Ullamcorper viverra tortor lobortis viverra auctor egestas. Nulla condimentum a'
                    'c metus quam turpis '
                    'gravida ut velit. Porta justo lacus consequat sed platea. '
                    'Ut dui massa quam elit faucibus consectetur'
                    ' sapien aenean auctor. Felis ipsum amet justo in. Netus amet in egestas sed auctor lorem. '
                    'Justo ullamcorper'
                    ' velit habitasse lorem eu arcu. Non enim a elit urna eget nibh quisque donec condimentum. '
                    'Elit ut pellentesque neque in quis at viverra. Nisl etiam tristique odio eget convallis.',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto'
                    )),
              ],
            ),
          )
      ),
    );
  }
}
