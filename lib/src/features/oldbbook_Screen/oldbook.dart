 
import 'package:flutter/material.dart';
import 'package:myoldbook/src/controller/listview_widget.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/modal.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook_datailscreen.dart';

import 'package:myoldbook/src/strings/home_image.dart';

class OldBookScreen extends StatefulWidget {
   OldBookScreen({super.key});


  @override
  State<OldBookScreen> createState() => _OldBookScreenState();

}

class _OldBookScreenState extends State<OldBookScreen> {


  static List<OldBookModal> main_list = [OldBookModal("CGPSC-PRE-MAIN", oldbook1, "premer IAS","2th", "21/02/2022", "Bialspur","250", "500"),
                                          OldBookModal("Chhattisgarh", oldbook2, "premer IAS","1th", "21/02/2022", "Raipur","220", "550"),
                                          OldBookModal("Complete Mathematics", oldbook3, "Lucebt's","3th", "21/02/2022", "Durg","150", "350"),
                                          OldBookModal("Data Structures", oldbook4, "sarta sahani","1th", "21/02/2022", "Bilaspur","300", "750"),
                                          OldBookModal("12th Mathematics", oldbook5, "R.D Sharma","4th", "21/02/2022", "Mahasamund","300", "650"),
                                          OldBookModal("MCA solved paper", oldbook6, "k.L sa","5th", "21/02/2022", "Bhilai","100", "250"),
                                          OldBookModal("NDA Solved paper", oldbook7, "M.S Sharma","1th", "21/02/2022", "Raipur","50", "320"),
                                          OldBookModal("Think and Grow Rich", oldbook8, "jk verma","5th", "21/02/2022", "Korba","100", "350"),
                                         ];


  List<OldBookModal>display_lis = List.from(main_list);


  //================search methods ================

  void updateList(String value){

    setState(() {

      display_lis = main_list.where((element) => element.name!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }



  @override
  Widget build(BuildContext context) {



    return Scaffold(


      body: SafeArea(
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 12),
              width: double.infinity,
              height: 70,
              color: Colors.cyan,

              child: TextFormField(
                autofocus: false,
                autocorrect: true,
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade50,
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search_outlined),
                  suffixIcon: Icon(Icons.mic_outlined),
                  hintText: "Search Here",

                ),
                onChanged: (value) => updateList(value),


              ),

            ),

            Expanded(
              // =============call a class ==================
                child:    ListViewWidget(display_lis: display_lis),

            )
          ],

        ),
      ),




    );


  }


}


