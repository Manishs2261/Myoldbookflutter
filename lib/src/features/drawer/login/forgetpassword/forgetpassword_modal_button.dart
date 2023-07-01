import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/drawer/login/forgetpassword/forgetpassword_mobilenumber.dart';

import 'forgetpassword_mail.dart';
import 'forgetpasswordscreen.dart';

class ForgetPasswordModalButton {

 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(30),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selection!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            Text(" Select one of the options given below to reset your password."),


            SizedBox(height: 10.0,),

            ForgotPasswordWidget(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  ForgetPasswordMailScreen()));

              },
              btnIcon: Icons.mail_outline_outlined,
              title: "Email",
              subtitle: "Reset via Mail Verification",),

            SizedBox(height: 10.0,),

            ForgotPasswordWidget(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgetPasswordMobileNumber() ));


              },
              btnIcon: Icons.mobile_friendly_outlined,
              title: "Phone Number",
              subtitle: "Reset via Phone Verification",),
          ],
        ),

      ),
    );
  }



}