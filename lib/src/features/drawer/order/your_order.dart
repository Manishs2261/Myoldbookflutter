import 'package:flutter/material.dart';

import '../../../utils/strings/home_image.dart';


class YourOrder extends StatelessWidget {
  const YourOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
      ),
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                ),
              ],

            ),

            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage(newbook15)),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("   Core Java",style: TextStyle(fontSize: 20),),
                    Text("     Deliver at Friday"),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("₹ 500/-",style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                ),
              ],

            ),

            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage(newbook10)),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("     Flutter Recipes",style: TextStyle(fontSize: 20),),
                    Text("      Deliver at Monday"),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("₹ 500/-",style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
