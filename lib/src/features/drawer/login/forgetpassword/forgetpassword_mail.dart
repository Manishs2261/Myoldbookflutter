import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/drawer/login/forgetpassword/forget_widgets.dart';

import '../../../../utils/strings/home_image.dart';



class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                SizedBox(height: 30 * 4,),
                LoginHaderWidgets(
                    image: tForgetPasswordImage,
                    title: "Forget Password",
                    subTitle: "Enter your registered Email to receive OTP"),

                SizedBox(height: 30,),

                Form(
                    child: Column(
                      children: [

                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Email"),
                            hintText: "Email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.mail_outline_outlined),

                          ),
                        ),

                        SizedBox(height: 10.0,),
                        SizedBox(

                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Next"),
                          ),
                        )

                      ],
                    ))




              ],
            ),

          ),
        ),

      ),
    );
  }
}
