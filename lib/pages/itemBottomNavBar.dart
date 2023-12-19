import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemBottomNavigationBar extends StatelessWidget {
  const itemBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3),
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
Text("\$120",
style: TextStyle(
  color: Colors.purple.shade400,
  fontWeight: FontWeight.bold,
  fontSize: 18,
),


),
            ElevatedButton.icon
              (onPressed: (){},
            icon: Icon(CupertinoIcons.cart_badge_plus,color: Colors.white,),
              label: Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
               padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13,horizontal: 15)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  )
                )
                ),
              ),

          ],
        ),
      ),
    );
  }
}
