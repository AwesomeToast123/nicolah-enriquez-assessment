import 'package:assessment_app/screens/home_screen.dart';
import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:assessment_app/widgets/authentication_button.dart';
import 'package:assessment_app/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.all(paddingLogin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(color: airportBlue, size: iconLoginSize, FontAwesomeIcons.planeArrival),
                  Gap(gapIconTextLogin),
                  Text(airportSpotterText, style: TextStyle(fontSize: fontSizeAirportSpotter)),
                ],
              ),
            ),
            Gap(gapIconFormLogin),
            Text(emailText, style: TextStyle(fontSize: fontSizeLogin)),
            Gap(gapHeaderFormLogin),
            LoginFormWidget(
              hintText: blankText,
              controller: _email,
              isPassword: false,
              icons: FontAwesomeIcons.envelopesBulk,
            ),
            Gap(gapFormLogin),
            Text(passwordText, style: TextStyle(fontSize: fontSizeLogin)),
            LoginFormWidget(
              hintText: blankText,
              controller: _password,
              isPassword: true,
              icons: FontAwesomeIcons.lock,
            ),
            Gap(gapFormButtonLogin),
            AuthenticationButton(
              fontSize: fontSizeButtonLogin,
              buttonText: loginText,
              callBackFunction: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              isColored: true,
              isTextColored: false,
            ),
          ],
        ),
      ),
    );
  }
}
