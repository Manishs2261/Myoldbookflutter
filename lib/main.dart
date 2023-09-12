import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:myoldbook/src/features/bottom_navigation_bar/bottom_navigatiion.dart';
import 'package:myoldbook/src/features/drawer/profile/persionprofile.dart';
import 'package:myoldbook/src/features/homepage/home_screen.dart';
import 'package:myoldbook/src/features/newbook_screen/newbook.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook.dart';
import 'package:myoldbook/src/features/splasescreen/splasepage.dart';

//globel object for accessing device scren size
late Size  medialquery;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),

      theme: ThemeData(

        primarySwatch: Colors.cyan,

      ),
      home: SplashScreenFirst(),
      //Profile(),
     // ButtomNavigationbutton(),
      // NewBook(),
      //OldBookScreen(),

      //HomeScreen(),
    );
  }
}


