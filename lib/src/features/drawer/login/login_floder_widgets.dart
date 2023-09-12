import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/strings/home_image.dart';





class LoginFolderWidgets extends StatelessWidget {
  const LoginFolderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),

        SizedBox(height: 10.0,),

        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(image: AssetImage(googlelogo),width: 20.0,),
              onPressed: (){},
              label: Text("Sign-In with Google")),
        ),

        SizedBox(
          height: 10.0,
        ),

        TextButton(
            onPressed: (){},
            child: Text.rich(TextSpan(text:"Already have an Account?",style:
            TextStyle(
                color: Colors.brown
            ),
                children: [
                  TextSpan(
                      text: "  Signup",style:
                  TextStyle(
                      color: Colors.blue
                  )
                  )
                ]))
        ),
      ],
    );
  }
}