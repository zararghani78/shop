import 'package:flutter/material.dart';

class cartAppBar extends StatelessWidget {
  const cartAppBar({super.key});

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
            child: Icon(Icons.arrow_back,
            size: 30,
            color: Colors.black,),
            
          ),
          Padding(

            padding: EdgeInsets.only(left: 20),

            child: Text(
              "Cart",
              style: TextStyle(
                color: Colors.deepPurple
                    , fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,color: Colors.deepPurple,size: 30,)

        ],
      )
      ,
    );
  }
}
