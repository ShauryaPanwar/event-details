import 'package:event_details/Event-info.dart';
import 'package:event_details/detail.dart';
import 'package:event_details/homepage.dart';
import 'package:event_details/login_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white
        ),
      ),
      home: LoginPage(),
      routes: {
        '/homepage':(context)=> HomePage(),
        '/detail':(context)=> detail(),
        '/event':(context)=>EventInfo()

      },

      debugShowCheckedModeBanner: false,
    );
  }
}


