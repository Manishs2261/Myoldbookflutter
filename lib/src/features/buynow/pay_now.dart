import 'package:flutter/material.dart';

class PayNow extends StatelessWidget {
  const PayNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Datails "),
      ),
      body: SingleChildScrollView(
        child: Stack(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(left:20,top: 100),
                    child: Container(
                      height: 450,
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text("Card Number",style: TextStyle(
                              fontSize: 16
                            ),),
                          ),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15),
                            child: TextFormField(

                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade100,

                                prefixIcon: Icon(Icons.add_card),
                                hintText: "Enter your card number",


                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
              //============================================






                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("Expiry Date"),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 260),
                                child: TextFormField(

                                  decoration: InputDecoration(

                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey.shade100,
                                    hintText: "04/25"

                                  ),

                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("CVV"),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 260),
                                child: TextFormField(

                                  decoration: InputDecoration(

                                      border: OutlineInputBorder(),
                                      filled: true,
                                      fillColor: Colors.grey.shade100,
                                      hintText: "***"

                                  ),

                                ),
                              ),


                            ],
                          ),



                         //============================================
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text("Card Holder Name",style: TextStyle(
                                fontSize: 16
                            ),),
                          ),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15),
                            child: TextFormField(

                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade100,

                                  prefixIcon: Icon(Icons.person),
                                  hintText: "Enter Card Holder Name",


                                  border: OutlineInputBorder()
                              ),
                            ),
                          ),




                        ],
                      ),
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),

                        boxShadow: [
                          BoxShadow(

                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0,3),
                          )
                        ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120,top: 60),
                    child: Container(
                      height: 70,
                      width: 150,
                      child: Center(child: Text("Card",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                      decoration: BoxDecoration(

                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(30),

                          boxShadow: [
                            BoxShadow(

                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0,3),
                            )
                          ]
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 600,left: 20),
                    child: SizedBox(
                      width: 350,
                      height: 45,
                      child: ElevatedButton(onPressed: (){},
                          child: Text("Pay Now",style: TextStyle(
                            fontSize: 20
                          ),)),
                    ),
                  )

                ],
              ),
      ),





    );
  }
}
