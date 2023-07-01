import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/homepage/home_screen.dart';
import 'package:myoldbook/src/features/newbook_screen/newbook.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook.dart';

class ButtomNavigationbutton extends StatefulWidget {
  const ButtomNavigationbutton({super.key});

  @override
  State<ButtomNavigationbutton> createState() => _ButtomNavigationbuttonState();
}

class _ButtomNavigationbuttonState extends State<ButtomNavigationbutton> {

  var _pagesDta = [HomeScreen(),OldBookScreen(),NewBook()];
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _pagesDta[_selectedItem],

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey.shade100,


        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: "Old Book"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "New Book"),

        ],

        currentIndex: _selectedItem,
        onTap: (setValue){
          setState(() {

            _selectedItem = setValue;

          });
        },
      ),


    );
  }
}

