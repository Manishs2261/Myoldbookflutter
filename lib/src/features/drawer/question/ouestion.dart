import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("FAQs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          
          children: [
             

            Text(" 1 - What is a book selling app ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(height: 5,),
            Text("A book selling app is a mobile application that allows users to buy and sell books online. It provides a platform for individuals to list their books for sale and enables others to browse and purchase books from the available listings.",
              style: TextStyle(color: Colors.grey),),
            
          ],
        ),
      ),
    );
  }
}
