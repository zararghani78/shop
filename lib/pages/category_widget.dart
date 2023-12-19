import 'package:flutter/material.dart';
class Categoerywidget extends StatelessWidget {
  const Categoerywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child:Row(

        children:[
          for(int i=1; i<8; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/$i.png",width: 70,height: 50,),
              Text('Sundal',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF4C53A5),
              ),)


            ],
          ),

      ),
      ],
      ),
    );
  }
}
