import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:flutter/material.dart';


class AuthenticationButton extends StatelessWidget {
  const AuthenticationButton({
    this.email,
    this.fontSize,
    this.password,
    required this.buttonText,
    required this.callBackFunction,
    required this.isColored,
    required this.isTextColored,
    super.key,
  });

  final String? email;
  final String? password;
  final String buttonText;
  final VoidCallback callBackFunction;
  final bool isColored;
  final double? fontSize;
  final bool isTextColored;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SizedBox(
        width: sizedBoxAuthenticationButtonWidget,
        height: sizedBoxAuthentionButtonHeight,
        child: ElevatedButton(
          onPressed: callBackFunction,
          style: ElevatedButton.styleFrom(
            backgroundColor: isColored ? airportBlue : white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusLoginButton),
            ),
            shadowColor: charcoal,
            elevation: elevationAuthenticationButton,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: isTextColored ? airportBlue : white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
