import 'package:flutter/material.dart';
import 'package:resume_builder/carrier_objective.dart';
import 'package:resume_builder/contact_page.dart';
import 'package:resume_builder/eduction.dart';
import 'package:resume_builder/experiences.dart';
import 'package:resume_builder/home_page.dart';
import 'package:resume_builder/personal_details.dart';
import 'package:resume_builder/splash_screen.dart';
import 'package:resume_builder/technical_skills.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "home": (context) => HomePage(),
        "contactInfo": (context) => ContactPage(),
        "personalDetails": (context) => PersonalDetails(),
        "carrierObjective": (context) => CarrierObjective(),
        "eduction": (context) => Eduction(),
        "experiences": (context) => Experiences(),
        "technicalSkill": (context) => TechnicalSkills(),


      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                "onUnknownRoute",
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),
          ),
        );
      },
    );
  }
}