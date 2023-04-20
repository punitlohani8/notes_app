

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/Screens/staggered_home_page.dart';

import 'Screens/home_page.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      //home: SafeArea(child: HomePage()),
      home: SafeArea(child: StaggeredHomePage()),
    );
  }
}

