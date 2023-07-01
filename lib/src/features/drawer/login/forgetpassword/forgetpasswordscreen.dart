import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ForgotPasswordWidget extends StatelessWidget {
   ForgotPasswordWidget({

    required this.onTap,
    required this.btnIcon,
    required this.title,
    required this.subtitle,

    super.key,
  });

  final IconData btnIcon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),

        child: Row(
          children: [
            Icon(btnIcon,size: 60.0,),

            SizedBox(width: 10.0,),

            Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(title,style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),),
                Text(subtitle),
              ],


            )
          ],
        ),

      ),
    );
  }
}


