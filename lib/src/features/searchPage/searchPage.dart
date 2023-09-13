import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook.dart';

import '../../modal/oldbookmode/modal.dart';
import '../../searchbar.dart';
import '../../utils/strings/home_image.dart';

class SearchPage extends StatefulWidget {

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

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

  void updateList(String value){

    setState(() {

      display_lis = main_list.where((element) => element.name.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  final searchController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          // call appbar method
            flexibleSpace: _appBar(),

        ),
      ),
    );

  }

  // search app Bar
  Widget _appBar(){
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 5,left: 50,right: 10),
      child: TextField(
          controller: searchController,
          maxLines: 1,
          autofocus: true,
          minLines: 1,
          keyboardType: TextInputType.text,
          onChanged: (value) => updateList(value),

          onSubmitted: (value) {


              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBarDemo(value: value,)));



          },
          decoration: InputDecoration(

              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              fillColor: Colors.white,
              filled: true,
              hintText: "search here",
              prefixIcon: Icon(Icons.search_rounded,size: 25,),
              suffixIcon: Icon(Icons.mic,size: 25,),
            isDense: true,                      // Added this

          )
      ),
    );
  }
}
