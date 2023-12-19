import 'package:flutter/material.dart';
import 'package:shop/pages/itempage.dart';

class Itemwidget extends StatelessWidget {
  const Itemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<8; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          padding: EdgeInsets.only(left: 15 ,right: 15 ,top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFEDECEF2),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Text(
                      '50%',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  Icon(Icons.favorite_border,color: Colors.red,
                  ),
                ],
              ),
              InkWell(
              onTap: (){

                Navigator.pushNamed(context, "itempage");
              },
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Image.asset('assets/images/$i.png'),
                  height: 100 ,
                  width: 100 ,

                ),
              ),

              Container(
                padding: EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",style: TextStyle(fontSize: 18,color: Colors.deepPurple,fontWeight: FontWeight.bold),
                ),
              ),
Container(
  padding: EdgeInsets.all(2),
  alignment: Alignment.centerLeft,
    child: Text("product Details", style:TextStyle(fontSize: 14, color: Colors.deepPurple))
),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    "\$5",

                    style: TextStyle(color: Colors.deepPurple,fontSize: 16,fontWeight: FontWeight.bold),

                  ),
                    Icon(Icons.shopping_cart_checkout,color: Colors.deepPurple,)
                ],
              )

              ),
            ],
          ),
        )
      ],

    );
  }
}
