import 'package:assessment_app/providers/airport_provider.dart';
import 'package:assessment_app/screens/login_screen.dart';
import 'package:assessment_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AirportProvider>(
          create: (_) => AirportProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: airportBlue
        ),
        home: LoginScreen(),
        color: white,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
