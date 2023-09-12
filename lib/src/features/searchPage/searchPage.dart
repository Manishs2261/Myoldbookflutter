import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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

          maxLines: 1,
          autofocus: true,
          minLines: 1,
          keyboardType: TextInputType.text,
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
