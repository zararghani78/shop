import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop/pages/itemBar.dart';
import 'package:shop/pages/itemBottomNavBar.dart';

class itempage extends StatelessWidget {
  const itempage({super.key});

  @override
  Widget build(BuildContext context) {
   List<Color> Clrs=[
   Colors.red,
     Colors.pink,
     Colors.blue,
     Colors.yellow,
     Colors.green,



   ];
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: ListView(
        children: [
          itemBar(),

          Padding(padding: EdgeInsets.all(16),
          child: Image.asset('assets/images/1.png'),

          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30,
                    bottom: 15),
                      child: Row(
                        children: [
                          Text("Product Title",style: TextStyle(color:Colors.purple.shade200,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,


                          ),),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:5, bottom: 10),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

RatingBar.builder(
  initialRating:4,
  minRating:1,
  direction:Axis.horizontal,
  itemCount: 5,
  itemSize: 20,

  itemPadding:EdgeInsets.symmetric(horizontal:4),
    itemBuilder:(context,_)=> Icon(
      Icons.favorite,
      color: Colors.purple.shade100,
    ),
  onRatingUpdate: (index){},

),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
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
                              )
                                , child: Icon(CupertinoIcons.plus,
                            size: 18,),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                "01",
                                style: TextStyle(
                                  color: Colors.purple.shade200,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: Offset(0,3),


                                    )
                                  ]
                              )
                              , child: Icon(CupertinoIcons.minus,
                              size: 18,),
                            )

                          ],
                        )


                      ],
                    ),
                    ),

Padding(padding: EdgeInsets.symmetric(vertical: 10),

child: Text(
  "This the best product and with 1000 price and it will be deliver all over in world ",
  style: TextStyle(
    color: Colors.purple.shade300,
    fontSize: 15,

  ),
),
),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8),

                      child:Row(
                      children:[

                      Text(
                        "Size:",

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple.shade300,
                        ),

                      ),
                      SizedBox(width: 20,

                      ),
                        Row(
                          children: [
                            for(int i=5;i<10;i++)
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
boxShadow:[ BoxShadow(
  color: Colors.grey.withOpacity(0.5),

  spreadRadius: 8,
  blurRadius: 8,
)],

                              ),
child: Text(
  i.toString(),
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  ),
),
                            ),

                          ],
                        ),


                      ],
                    ),),

                    Padding(padding: EdgeInsets.symmetric(vertical: 8),

                      child:Row(
                        children:[

                          Text(
                            "Color:",

                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple.shade300,
                            ),

                          ),
                          SizedBox(width: 20,

                          ),
                          Row(
                            children: [
                              for(int i=0;i<5;i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Clrs[i],
                                    boxShadow:[ BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),

                                      spreadRadius: 8,
                                      blurRadius: 8,
                                    )],

                                  ),

                                ),

                            ],
                          ),


                        ],
                      ),),


                  ],
                ),
              ),

            ),
          ),
        ],
      ),
      bottomNavigationBar: itemBottomNavigationBar(),
    );
  }
}
