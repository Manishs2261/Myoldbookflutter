import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/strings/home_image.dart';



class BottomScreenSignup extends StatelessWidget {
  const BottomScreenSignup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OR"),
        SizedBox(width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: (){},
              icon: Image(
                image: AssetImage(googlelogo),width: 20.0,
              ),
              label: Text("Sign-In with Google")),
        ),

        TextButton(
            onPressed: (){},
            child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: "Already have an Account? "),
                      TextSpan(text: "Login",style: TextStyle(
                          color: Colors.green
                      ))
                    ]
                )
            ))

      ],
    );
  }
}