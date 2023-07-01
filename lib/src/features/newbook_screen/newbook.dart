import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/controller/listview_widget.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/modal.dart';
import 'package:myoldbook/src/strings/home_image.dart';

class NewBook extends StatefulWidget {
  const NewBook({super.key});

  @override
  State<NewBook> createState() => _NewBookState();
}

class _NewBookState extends State<NewBook> {

  static List<OldBookModal> main_list = [
                                                OldBookModal("Java", newbook14, "Dr.R.Nagavan Row","8th", "", "3.4 Rating","700", "900"),
    OldBookModal("Asian Business", newbook1, "Michael A witt","2th", "", "4.5 Rating","600", "800"),
                                          OldBookModal("JEE Main Physics", newbook17, "DB Singh","3th", "", "3.4 Rating","600", "750"),
    OldBookModal("Company of One", newbook3, "Paul jarvi","3th", "", "3.4 Rating","200", "350"),
                                          OldBookModal("C++", newbook4, "Alex allain","4th", "", "3.4 Rating","300", "499"),
                                          OldBookModal("OPP witg C++", newbook6, "E. Balagurusamy","2th", "", "3.4 Rating","400", "620"),
                                          OldBookModal("The C++", newbook5, "Bajarna S.","1th", "", "2.4 Rating","299", "400"),
                                          OldBookModal("Flutter", newbook8, "Jimmy porto","2th", "", "4.4 Rating","320", "400"),
                                          OldBookModal("Flutter", newbook9, "Olivia evans","5th", "", "3.4 Rating","200", "300"),
                                          OldBookModal("Flutter Recipes", newbook10, "apress","1th", "", "2.4 Rating","420", "520"),
                                          OldBookModal("Heat and Thermodynamics", newbook11, "A.k kobalt","2th", "", "3.4 Rating","550", "800"),
                                          OldBookModal("The Complete Reference", newbook7, "A.k .jon","4th", "", "2.4 Rating","350", "500"),
                                          OldBookModal("Higher Engg Mathes", newbook12, "B.S.Grewal","3th", "", "3.4 Rating","800", "1200"),
                                          OldBookModal("IIT-JEE", newbook13, "Lusents's","1th", "", "4.4 Rating","430", "600"),

                                          OldBookModal("Core Java", newbook15, "Barry Burad ","4th", "", "3.4 Rating","600", "800"),
                                          OldBookModal("JEE Main Chemistry", newbook16, "R.k Agraval","2th", "", "3.4 Rating","500", "700"),
                                          OldBookModal("Modern operating System", newbook19, "J.L. verma","4th", "", "3.4 Rating","900", "1200"),
                                          OldBookModal("Operating System", newbook20, "S.chand","2th", "", "2.4 Rating","700", "1000"),
                                          OldBookModal("Things we never got over", newbook22, "Lucy score","1th", "", "3.4 Rating","600", "950"),

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
