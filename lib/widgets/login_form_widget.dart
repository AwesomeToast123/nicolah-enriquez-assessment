import 'package:assessment_app/utils/constants.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({
    required this.hintText,
    required this.controller,
    required this.isPassword,
    required this.icons,
    super.key,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final IconData icons;

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(radiusLoginForm)),
      color: white,
      elevation: elevationLoginFormWidget,
      shadowColor: charcoal,
      child: TextField(
        obscureText: widget.isPassword ? isObscure : isObscure = false,
        autocorrect: widget.isPassword,
        controller: widget.controller,
        decoration: InputDecoration(
          fillColor: white,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: grey),
          prefixIcon: Icon(widget.icons, color: airportBlue),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() => isObscure = !isObscure);
                  },
                  icon: const Icon(FontAwesomeIcons.eye, color: airportBlue),
                )
              : null,
          contentPadding: const EdgeInsets.symmetric (
            vertical: contentPaddingLoginForm,
            horizontal: contentPaddingLoginForm,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radiusLoginForm)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: white, width: borderSideButtonWidth),
            borderRadius: BorderRadius.all(Radius.circular(radiusLoginForm)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: white, width: borderSideButtonWidth),
            borderRadius: BorderRadius.all(Radius.circular(radiusLoginForm)),
          ),
        ),
      ),
    );
  }
}
