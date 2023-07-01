import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myoldbook/src/controller/datailsbook_widgets.dart';
import 'package:myoldbook/src/features/buynow/buynow_page.dart';
import 'package:myoldbook/src/strings/home_image.dart';



class DatailOldBook extends StatelessWidget {
   DatailOldBook({super.key, required this.oldname, required this.oldimage, required this.oldauthor, required this.oldeditation, required this.oldnewprice, required this.oldprice});

   final String oldname;
   final String oldimage ;
   final String oldauthor;
   final String oldeditation ;
   final String oldnewprice;
   final String oldprice;





   //===============costome maethod============
   Widget bottomNavigatorBar({

     required Color iconColor,
     required Color backgroundcolor,
     required Color colorr,
     required String titile,
     required IconData icondta,
   }){
     IconData? iconData;
     return Expanded(
       child: Container(

         padding: EdgeInsets.all( 20),
         color:backgroundcolor,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Icon(
               icondta,
               size: 17,
               color: iconColor,
             ),
             SizedBox(
               width: 5,),
             Text(
               titile,

               style: TextStyle(
                   color: colorr
               ),
             ),

           ],
         ),


       ),
     );


   }





   @override
  Widget build(BuildContext context) {


    return Scaffold(


      bottomNavigationBar:Row(
          children: [

            BottomAppBar(
              color: Colors.transparent,
              child:Row(
                children: [

                  SizedBox(

                    width: 196,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,

                        ),

                        onPressed: (){

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("successfully add"),
                          ));

                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outline,color: Colors.black,),
                            SizedBox(width: 5,),
                            Text("Add to Card",style: TextStyle(color: Colors.black),),

                          ],
                        ),

                      ),
                  ),


                  SizedBox(

                      width: 196,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,

                          ),
                          onPressed: (){

                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BuyNow(price: oldprice,)));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(Icons.sell_outlined,color: Colors.black,),
                              SizedBox(width: 5,),

                              Text("Buy Now",style: TextStyle(color: Colors.black)),
                            ],
                          ))),



                ],
              ),
            )




            // bottomNavigatorBar(iconColor: Colors.black, backgroundcolor: Colors.orange,
            //     colorr: Colors.black, titile:"Add To WishLIst", icondta: Icons.favorite_outline,),
            //
            // bottomNavigatorBar(iconColor: Colors.black, backgroundcolor: Colors.yellow,
            //     colorr: Colors.black, titile:"Buy Now", icondta: Icons.sell_outlined),


          ]

      ),


      appBar:  AppBar(

        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Product Overview",
          style: TextStyle(color: Colors.white),),
      ),

      body: DatailesBookWidgets(oldname: oldname, oldauthor: oldauthor, oldeditation: oldeditation, oldimage: oldimage,  oldprice: oldprice, oldnewprice: oldnewprice),
    );
  }
}


