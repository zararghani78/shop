import 'package:flutter/material.dart';

class itemBar extends StatelessWidget {
  const itemBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.purple.shade300,
            size: 30,),
          ),
          Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            "Product",
            style: TextStyle(
              color: Colors.purple.shade200,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          Spacer(),
          Icon(Icons.favorite,color: Colors.red,)
        ],
      ),

    );
  }
}
