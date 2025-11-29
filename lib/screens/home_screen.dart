import 'package:assessment_app/screens/home_screen_list.dart';
import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.all(paddingHomeScreen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              welcomeHeaderText,
              style: TextStyle(fontSize: fontSizeHeaderText),
            ),
            Text(
              welcomeBottomHeaderText,
              style: TextStyle(fontSize: fontSizeBottomHeaderText),
            ),
            Expanded(child: HomeScreenList()),
          ],
        ),
      ),
    );
  }
}
