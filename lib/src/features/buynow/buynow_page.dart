import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/buynow/pay_now.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Billing Now "),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,


        children: [
          Container(
            padding: EdgeInsets.all(10),
             margin: EdgeInsets.only(left: 20,right: 20,top: 130),
            height: 250,
            width: 350,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 1),
                ),
              ],
            ),

            child: Column(
              children: [
                Row(



                  children: [

                    Text("Shiping to : ",style: TextStyle(
                      fontSize: 20
                    ),),
                    Text("Sanju sahu , Gour colony,Yadunan..",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 15,),
                Row(
                  children: [

                    Text("Items:",style: TextStyle(
                      fontSize: 20
                    ),),
                    SizedBox(width: 200,),
                    Text("₹ ${price}",style: TextStyle(
                      fontSize: 18
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Delivery :",style: TextStyle(
                        fontSize: 18
                    ),),
                    SizedBox(width: 184,),
                    Text("₹ 0.00",style: TextStyle(
                    fontSize: 18
                  ),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Order Total :- ",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 144,),
                    Text("₹ ${price}",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 22
                    ),),
                  ],
                ),

                SizedBox(height: 10,),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),

                SizedBox(height: 25,),

                Text("Your Savings : 95.00(8%)",style: TextStyle(
                  color: Colors.red
                ),),
                Text("* Item discount")
              ],
            ),
          ),
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 350,
              height: 45,

              child: ElevatedButton(

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PayNow ()));
                },
                child:Text("Place Your Order and Pay"),
              ),
            ),
          )
        ],
      )
    );
  }
}
