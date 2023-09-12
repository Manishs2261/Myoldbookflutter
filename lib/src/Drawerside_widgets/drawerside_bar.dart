import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/drawer/addtocard/addtocard.dart';
import 'package:myoldbook/src/features/drawer/compalalint/complain.dart';

import 'package:myoldbook/src/features/drawer/login/loginscreen.dart';
import 'package:myoldbook/src/features/drawer/order/your_order.dart';
import 'package:myoldbook/src/features/drawer/profile/persionprofile.dart';
import 'package:myoldbook/src/features/drawer/question/ouestion.dart';
import 'package:myoldbook/src/features/drawer/rating/rating.dart';


import 'package:myoldbook/src/features/drawer/register/singscerrnn.dart';
import 'package:myoldbook/src/features/drawer/transaction/transaction.dart';

import '../utils/strings/home_image.dart';


class Drawerside extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.cyan,
        child: ListView(
          children: [

            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 43,
                    child: CircleAvatar(radius: 40,
                      backgroundColor: Colors.blue,
                      child: Image(image: AssetImage(login),)

                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('Welcome Back'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        color: Colors.blueGrey,
                        child: OutlinedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));

                          },
                          child: Text('Login',style: TextStyle(color: Colors.white),),

                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.app_registration_outlined),
              title: Text("Register"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SignScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.layers),
              title: Text("Your Order"),
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => YourOrder()));
              },

            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text("Transaction"),

              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Transcation()));
              },

            ),
            ListTile(
              leading: Icon(Icons.data_object),
              title: Text("Add to Card"),

              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddToCard()));
              },

            ),
            ListTile(
              leading: Icon(Icons.star_outline),
              title: Text("Ratibg & Review"),
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RatingBarPage()));
              },

            ),
            ListTile(
              leading: Icon(Icons.copy_outlined),
              title: Text("Raise a Compalalint"),
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Complain()));
              },

            ),
            ListTile(
              leading: Icon(Icons.format_quote_outlined),
              title: Text("FAQs"),

              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Question()));
              },

            ),

            //===============coustome mathod coll==============

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Call us:'),
                      Text("+91 7895469231"),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(

                    children: [
                      Text('Mail us:'),
                      Text('sahusanju138@gmail.com'),
                    ],
                  )

                ],
              ),
            )

            //=====================================
          ],
        ),
      ),
    );
  }
}