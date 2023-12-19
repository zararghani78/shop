import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartitemsample extends StatelessWidget {
  const Cartitemsample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
for( int i=1; i<4; i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.purple.shade100,
                  onChanged: (index){}


              ),
              Container(
                height: 70,
                width:70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset('assets/images/$i.png'),

              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("product title",
    style: TextStyle(
      color: Colors.purple.shade200,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),

    ),
    Text("\$5",
    style: TextStyle(
      color: Colors.purple.shade200,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    )

  ],
),



              ),
              Spacer(),
              Padding(padding: EdgeInsets.symmetric(vertical:5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
Icon(Icons.delete ,color: Colors.red,size: 30,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:[

                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius:10 ,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child:   Icon(
                          CupertinoIcons.plus,size: 18,),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("01",
                        style: TextStyle(color: Colors.purple.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:[

                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius:10 ,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child:   Icon(
                          CupertinoIcons.minus,size: 18,),
                      ),
                    ],
                  )

                ],

              ),



              )
            ],
          ),

        ),
      ],
    );
  }
}
