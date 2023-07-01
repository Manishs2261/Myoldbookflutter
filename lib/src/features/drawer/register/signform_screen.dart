import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SingupFromWidget extends StatelessWidget {
  const SingupFromWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Form(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration:const InputDecoration(

                label: Text("Name"),
                hintText: "Name",

                prefixIcon: Icon(
                    Icons.person_outline_outlined),
                border: OutlineInputBorder(),

              ),
            ),

            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.fingerprint,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Phonw Number"),
                hintText: "Phone Number",
                prefixIcon: Icon(
                  Icons.phone_android_outlined,

                ),
                border: OutlineInputBorder(),
              ),
            ),


            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.email_outlined,

                ),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Address"),
                hintText: "Address",
                prefixIcon: Icon(
                  Icons.location_city,

                ),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox( height: 10.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},

                child: Text("Sing up".toUpperCase()),
              ),

            )
          ],
        ),
      ),
    );
  }
}