import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/drawer/login/forgetpassword/forgetpassword_modal_button.dart';



class LoginFrom extends StatelessWidget {
  const LoginFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(

        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextFormField(
              decoration: const InputDecoration(

                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "Email",
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox( height: 10.0,),


            TextFormField(

              decoration: const InputDecoration(

                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon:Icon(Icons.remove_red_eye_sharp),
                ),


              ),
            ),

            const SizedBox(height: 20.0,),

            Align(

              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  
                  ForgetPasswordModalButton.buildShowModalBottomSheet(context);

                },
                child: Text("Forget Password"),

              ),
            ),


            SizedBox(
              width: double.infinity,

              child:   ElevatedButton(

                onPressed: (){},
                child: Text("Login".toUpperCase()),
              ),
            )

          ],

        ),
      ),
    );
  }


}







