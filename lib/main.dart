import 'package:flutter/material.dart';
import 'package:shop/pages/Cartpage.dart';
import 'package:shop/pages/Home_page.dart';
import 'package:shop/pages/itempage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,

      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
  "/": (context)=> Homepage(),
        "cartpage": (context) => Cartpage(),
        "itempage": (context)=> itempage(),

      },



    );
  }
}
