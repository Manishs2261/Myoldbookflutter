import 'package:flutter/material.dart';


class RatingBarPage extends StatefulWidget {
  const RatingBarPage({super.key});

  @override
  State<RatingBarPage> createState() => _RatingBarPageState();
}

class _RatingBarPageState extends State<RatingBarPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rating "),
      ),

    );
  }
}
