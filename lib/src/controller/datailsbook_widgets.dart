import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook_datailscreen.dart';

enum SinginCharacter {fill , outline}

class DatailesBookWidgets extends StatelessWidget {
   DatailesBookWidgets({
    super.key,
    required this.oldname,
    required this.oldauthor,
    required this.oldeditation,
    required this.oldimage,
    required this.oldprice,
    required this.oldnewprice,
  }) ;



  final String oldname;
  final String oldauthor;
  final String oldeditation;
  final String oldimage;
  final String oldprice;
  final String oldnewprice;

  SinginCharacter _character = SinginCharacter.fill;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(oldname,style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text(oldauthor),
                ),
                Text("     Editaiion :- ${oldeditation}"),
                Center(
                  child: Container(
                    height: 230,

                    padding: EdgeInsets.all(8),
                    child: Image(image: AssetImage(oldimage),height: 250,width: 180,fit: BoxFit.fill,),

                  ),
                ),
                Container(

                  padding: EdgeInsets.symmetric(horizontal: 20),

                  width: double.infinity,
                  child: Text("Available Option",
                    textAlign:TextAlign.start,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10,
                ),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.green[700],
                          ),
                          Radio(
                              value: _character,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged:(value){
                              }
                          ),
                        ],

                      ),
                      Text("\₹${oldprice}/-",style: TextStyle(
                          fontSize: 20
                      ),),


                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text("\₹${oldnewprice}/-",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20,
                            color: Colors.grey),),

                      ),


                    ],
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Delivery :- ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ),
                    Text(" Delivery by26 Jun, Monday | Free "),
                  ],
                ),


              ],


            ),



          ),
        ),

        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text("About This Product",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.w600,

                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text("Copyright ownership gives the owner the exclusive right to use the work, with some exceptions. When a person creates an original "
                    "work, fixed in a tangible medium, he or she automatically owns copyright to the work.",
                  style:TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),)
              ],
            ),

          ),
        ),
      ],
    );
  }
}