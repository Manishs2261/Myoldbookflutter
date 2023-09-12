import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/drawer/login/login_hader_widget.dart';

import '../../../../utils/strings/home_image.dart';




class ForgetPasswordMobileNumber extends StatelessWidget {
  const ForgetPasswordMobileNumber({super.key});

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
                    subTitle: "Enter your registered mobile number  to receive OTP"),

                SizedBox(height: 30,),

                Form(
                    child: Column(
                      children: [

                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Phone Number"),
                            hintText: "Phone Number",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.phone_android_outlined),

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