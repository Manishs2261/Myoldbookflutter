import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/controller/listview_widget.dart';
import 'package:myoldbook/src/modal/oldbookmode/modal.dart';

import '../../../utils/strings/home_image.dart';

class AddToCard extends StatefulWidget {
  const AddToCard({super.key});

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {

  static List<OldBookModal> main_list = [
    OldBookModal("Java", newbook14, "Dr.R.Nagavan Row","8th", "", "3.4 Rating","700", "900"),
    OldBookModal("Asian Business", newbook1, "Michael A witt","2th", "", "4.5 Rating","600", "800"),

  ];



  List<OldBookModal>display_lis = List.from(main_list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add To Card"),
      ),


      body: Container(

        child: ListViewWidget(display_lis: display_lis),
      ),
    );
  }
}
