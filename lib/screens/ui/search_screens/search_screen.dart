import 'package:flutter/material.dart';
import 'package:pickball/Widget/SingleChildContainer.dart';
import 'package:pickball/appImage.dart';
import 'package:pickball/screens/ui/search_screens/sessions/session_list.dart';
import 'package:pickball/screens/ui/search_screens/sessions/session_screen.dart';
import 'package:pickball/screens/ui/search_screens/trainer/trainer-list.dart';
import 'package:pickball/screens/ui/search_screens/trainer/trainer_profile.dart';
import '../../../components/constrains.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String selectedText = 'Sessions'; // Default selected text


  bool _isPanelOpen = false; // To track whether the side panel is open or closed

  // Function to toggle the side panel
  void _togglePanel() {
    setState(() {
      _isPanelOpen = !_isPanelOpen; // Toggle the side panel state
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [

            // Row For Sessions And Trainers
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Sessions Text
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedText = 'Sessions';
                      });
                    },
                    child: Text(
                      'Sessions',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: selectedText == 'Sessions' ? Colors.blue : Colors.black,
                        decoration: selectedText == 'Sessions'
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: selectedText == 'Sessions' ? Colors.blue : Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  // Trainer Text
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedText = 'Trainers';
                      });
                    },
                    child: Text(
                      'Trainers',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: selectedText == 'Trainers' ? Colors.blue : Colors.black,
                        decoration: selectedText == 'Trainers'
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Row For Searching And Filtering
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Row(
                children: [
                  // Text Field For Search View
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 7.0),
                        labelText: 'Search Anything',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(14.0), // Add some padding to the image
                          child: Image.asset(AppImage.searchIcon2, // Path to your image asset
                            width: 24, // Set a size for the image
                            height: 24,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Color(0XFF000000).withOpacity(0.1), width: 1),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  // Adding Filter Icon
                  // GestureDetector(
                  //   onTap: _togglePanel, // Toggle the side panel when the filter icon is clicked
                  //   child: SizedBox(
                  //     height: 60,
                  //     width: 60,
                  //     child: Image.asset(AppImage.filterIcon),
                  //   ),
                  // ),
                ],
              ),
            ),

            // Applying Stack Method
            Expanded(
              child: Stack(
                children: [
                  // Session Container
                  if (selectedText == 'Sessions') SessionsWidget(),

                  // Trainers Container
                  if (selectedText == 'Trainers') TrainersWidget(),

                  // Animated Side Panel Filtering Option
                  FilterOption(isPanelOpen: _isPanelOpen),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Animated Filtering Widget
class FilterOption extends StatelessWidget {
  const FilterOption({
    super.key,
    required bool isPanelOpen,
  }) : _isPanelOpen = isPanelOpen;

  final bool _isPanelOpen;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      //Adding Some Decoration
      duration: Duration(milliseconds: 300), // Animation duration
      right: _isPanelOpen ? 0 : -300, // When open, the panel comes from left, else it hides
      top: 20,
      bottom: 1,
      left: _isPanelOpen ? 200 : MediaQuery.of(context).size.width, // Panel width adjustment

      child: Container(
        //Adding Some Decoration
        decoration: BoxDecoration(
          color: Colors.white, // Background color
          borderRadius: BorderRadius.circular(20), // Rounded corners
          border: Border.all(color: Colors.white, width: 1), // Border around the container
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),


        width: 300, // Custom width of the side panel
        height: MediaQuery.of(context).size.height, // Custom height, you can adjust this// Panel color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // Panel content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filter Options',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              SizedBox(height: 10),
              Text('Trainer One', style: TextStyle(color: Colors.black)),
              Text('Trainer Two', style: TextStyle(color: Colors.black)),
              Text('Trainer Three', style: TextStyle(color: Colors.black)),
              Text('Trainer Four', style: TextStyle(color: Colors.black)),
              Text('Trainer Five', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
