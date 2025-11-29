import 'package:flutter/material.dart';
import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';

class DialogWarningWidget extends StatelessWidget {
  const DialogWarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: AlertDialog(
        backgroundColor: white,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          dialogHeaderText,
          style: TextStyle(
            color: airportBlue,
            fontWeight: FontWeight.w500,
            height: heightTextStyleDialog,
          ),
        ),
        content: Container(
          padding: const EdgeInsets.all(paddingDialog),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(dialogRadiusValue),
            ),
          ),
          height: heightContainerSizeDialog,
          child: Text(
            errorTextDialog,
            style: const TextStyle(
              color: grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              okText,
              style: TextStyle(
                color: airportBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
