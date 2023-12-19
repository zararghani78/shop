import 'package:flutter/material.dart';
import 'package:shop/pages/BottomNavigationBar.dart';

import 'package:shop/pages/Cartitemsample.dart';
import 'package:shop/pages/cartAppBar.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children: [
  cartAppBar(),

    Container(
      height: 700,
      padding: EdgeInsets.only(top: 20),

      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),

        )
      ),
      child: Column(
        children: [
          Cartitemsample(),
          Container(
margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            padding: EdgeInsets.all(10),

            child: Row(
children: [
  Container(
    decoration: BoxDecoration(
      color: Colors.purple.shade100,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Icon(Icons.add,
    color: Colors.white,),
  ),
  Padding(padding: EdgeInsets.symmetric(horizontal: 10),

  child: Text(
    "Add coupon Code "
        ,style: TextStyle(color: Colors.purple.shade300,
    fontSize: 16, fontWeight: FontWeight.bold,
  ),

  ),
  )
],
            ),
          ),

        ],
      ),
    )
      ],

),
bottomNavigationBar: Cartnavigationbottom(),
    );
  }
}
