import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/drawer/login/forgetpassword/forget_widgets.dart';
import 'package:myoldbook/src/features/drawer/register/signform_screen.dart';



import '../../../utils/strings/home_image.dart';
import 'bottombuttomscreen.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(

          child: Container(
            padding: EdgeInsets.all(30),

            child: Column(

              children: [


                LoginHaderWidgets(
                    image: loginimage,
                    title: "Get On Board!",
                    subTitle: "Create your profile to start your Journey.",
                ),

                SingupFromWidget(),

                BottomScreenSignup(),



              ],
            ),
          ),
        ),


      ),
    );
  }
}




