import 'package:flutter/material.dart';
import 'package:myoldbook/main.dart';
import 'package:myoldbook/src/Drawerside_widgets/drawerside_bar.dart';
import 'package:myoldbook/src/features/newbook_screen/newbook.dart';
import 'package:myoldbook/src/features/notificaation/notification.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook.dart';

import '../../utils/strings/home_image.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    medialquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,

      appBar: AppBar(

        title: Text("Home"),

        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(


              child: IconButton(icon: Icon(Icons.notifications_outlined),
                  onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotifiactionScreen() ));
                  },),


            ),

          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              padding: EdgeInsets.symmetric(horizontal: 10,
                  vertical: 0),

              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Icon(Icons.blur_circular,
                    size: 25,
                    color: Colors.yellow[800],),
                  SizedBox(width: 5,),
                  Text("0",
                    style: TextStyle(
                        color: Colors.black
                    ),),


                ],
              ),
            ),
          ),
             ],
      ),

      drawer: Drawerside(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Column(

              children: [

                Container(
                   height: 300,

                  child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [

                        Image(image: AssetImage(banner6),width: 350,height: 400,fit: BoxFit.fill),
                        SizedBox(width: 10,),
                        Image(image: AssetImage(banner1),width: 350,height: 400,fit: BoxFit.fill),
                        SizedBox(width: 10,),
                        Image(image: AssetImage(banner2),width: 350,height: 400,fit: BoxFit.fill),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8.0,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    children: [


                      Image(image:AssetImage(newbook9),height: 230,width: 160,fit: BoxFit.fill,),
                      SizedBox(width: 8.0,),
                      Image(image:AssetImage(newbook13),height: 230,width: 160,fit: BoxFit.fill,),
                      SizedBox(width: 8.0,),
                      Image(image:AssetImage(newbook1),height: 230,width: 160,fit: BoxFit.fill,),

                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  height: 300,
                  child:  Image(image: AssetImage(banner7),width: 400,height: 300,fit: BoxFit.fill),

                ),

                SizedBox(height: 10,),

                Container(
                  height: 300,
                  child:  Image(image: AssetImage(banner4),width: 400,height: 300,fit: BoxFit.fill),

                ),

                SizedBox(height: 10,),


                   Row(

                    children: [
                      Expanded(child:Image(image: AssetImage(newbook1),width: 350,height: 230,fit: BoxFit.fill)),
                      SizedBox(width: 8.0,),
                      Expanded(child: Image(image: AssetImage(newbook17),width: 350,height: 230,fit: BoxFit.fill)),
                    ],
                  ),
                SizedBox(height: 10,),

                   Row(

                    children: [
                      Expanded(child:Image(image: AssetImage(newbook20),width: 350,height: 230,fit: BoxFit.fill)),
                      SizedBox(width: 8.0,),
                      Expanded(child: Image(image: AssetImage(newbook5),width: 350,height: 230,fit: BoxFit.fill)),
                    ],

                  ),

                SizedBox(height: 10.0,),

                Container(
                  height: 300,
                  child:  Image(image: AssetImage(banner5),width: 400,height: 300,fit: BoxFit.fill),

                ),


              ],
            ),


          ),
        ),
      ),


    );
  }
}


