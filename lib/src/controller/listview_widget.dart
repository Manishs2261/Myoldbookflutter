import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoldbook/main.dart';
import 'package:myoldbook/src/modal/oldbookmode/modal.dart';
import 'package:myoldbook/src/features/oldbbook_Screen/oldbook_datailscreen.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
    required this.display_lis,
  });



  final List<OldBookModal> display_lis;

  @override
  Widget build(BuildContext context) {
    medialquery = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: display_lis.length,
        itemBuilder: (BuildContext context, int index) {

          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(

              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>DatailOldBook( oldname: display_lis[index].name, oldimage:display_lis[index].images,oldauthor: display_lis[index].author,oldeditation: display_lis[index].editation,oldnewprice:display_lis[index].newprice,oldprice:display_lis[index].oldprice,) ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 200,

                    color: Colors.blueGrey[50],



                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: [
                        Container(


                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Image(image: AssetImage(display_lis[index].images),height: 170,width: 120,fit: BoxFit.fill,),
                              SizedBox(width: 10.0,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [

                                  Text(display_lis[index].name,style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.w500,
                                      color: Colors.black87
                                  ),),


                                  Row(

                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,


                                    children: [

                                      Text("Author Name - ${display_lis[index].author}",maxLines: 1,overflow:  TextOverflow.ellipsis, softWrap: false,),
                                     //SizedBox(width: medialquery.width * 0.1,),
                                      //Text(display_lis[index].data),
                                    ],
                                  ),

                                  SizedBox(height: 8.0,),

                                  Text('Editaion - ${display_lis[index].editation!}'),
                                  SizedBox(height: 8.0,),



                                  Row(
                                    children: [
                                      Text('₹ ${display_lis[index].oldprice!}/-',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),),
                                      SizedBox(width: 90,),
                                      Text( '₹ ${display_lis[index].newprice!}/-',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.red[200]
                                      ),),
                                    ],
                                  ),




                                  SizedBox(height: 8.0,),
                                  Text(display_lis[index].city!,style: TextStyle(

                                    fontSize: 14,fontWeight: FontWeight.bold,
                                  ),),

                                  SizedBox(height: 8.0,),
                                  Text("Delivery by26 Jun, Monday"),

                                ],
                              )
                            ],
                          ),




                        ),
                      ],
                    ),





                  ),
                )


              ],
            ),
          );

        }

    );
  }
}