import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;



class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(padding: EdgeInsets.only(
            left:20
          ),
            child: Text('DP Shop',

            style: TextStyle(fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4C53A5),
            ),),
          ),
          Spacer(),
        badges.Badge(
          showBadge: true,
            position: badges.BadgePosition.topEnd(),

            // backgroundColor: Colors.red,

            // padding: EdgeInsets.all(7),
            badgeContent: Text('5',style: TextStyle(color: Colors.white), ),

            child : InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartpage");
              },
              child: Icon(Icons.shopping_bag_outlined, size:30,color:Color(0xFF4C53A5)),



            ),
          ),

        ],
      ),
    );
  }
}
