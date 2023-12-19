import 'package:flutter/material.dart';

class Cartnavigationbottom extends StatelessWidget {
  const Cartnavigationbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Total",
    style: TextStyle(
      color: Colors.purple.shade400,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),

    ),
    Text("\$250",
    style: TextStyle(
      color: Colors.purple.shade400,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),

    )

  ],
),
            Container(
              alignment: Alignment.center,
                width: double.infinity,
                height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple.shade400,
              ),
              child: Text("Checkout",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),

            )

          ],
        ),
      ),
    );
  }
}
