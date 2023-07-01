import 'package:flutter/material.dart';
import 'package:myoldbook/src/strings/home_image.dart';


import 'login_floder_widgets.dart';
import 'login_from.dart';
import 'login_hader_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return SafeArea(

      child: Scaffold(

        body: SingleChildScrollView(

          child: Container(
            padding:  EdgeInsets.all(30),

            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.start,

              children: [
                LoginHaderWidgets(image: loginimage,
                    title:"Welcome Back",
                    subTitle:"Make it work, make it right, make it fast"),


                const LoginFrom(),
                LoginFolderWidgets(),


              ],
            ),

          ),
        ),
      ),
    );
  }
}






