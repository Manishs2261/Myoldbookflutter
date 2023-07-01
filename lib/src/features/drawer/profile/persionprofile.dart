import 'package:flutter/material.dart';
import 'package:myoldbook/src/strings/home_image.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(


        title:Text("Your Profile"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
               height:170,

              width: double.infinity,
              color: Colors.cyan,

              child: Stack(

                children: [

                  Center(
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 55,
                        child: CircleAvatar(radius:51,
                            backgroundColor: Colors.yellow,
                            child: Image(image: AssetImage(login),)
                        ),

                      ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 239,vertical: 107),
                    child: Icon(Icons.edit,color: Colors.black,),
                  ),
                ],
              ),
            ),

             Container(
               height: 60,
               width: double.infinity,
               color: Colors.cyan,



               child: Column(
                 children: [
                   
                   Text("Sanju sahu",style: TextStyle(
                     fontSize: 17,fontWeight: FontWeight.bold
                   ),),
                   Text("Sanjusahu138@gmail.com"),
                   Text("7389523175"),


                 ],
               ),

             ),

         
             Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(

                        hintText: "Enter Your Name ",
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter Your Mobile Number ",
                          labelText: "Mobile Number ",
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter Your Email Id ",
                          labelText: "Email Id",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder()
                      ),
                    ),

                    SizedBox(height: 15.0,),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter Your Address",
                          labelText: "Address",
                          prefixIcon: Icon(Icons.location_city),
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(
                      decoration: InputDecoration(


                          hintText: "Cahnge  Password ",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.fingerprint),
                          border: OutlineInputBorder()
                      ),
                    ),

                    SizedBox(height: 25.0,),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed:(){},
                          child: Text("Update")),
                    )


                  ],
                ),

              ),
           
          ],

        ),
      ),
    );
  }
}
