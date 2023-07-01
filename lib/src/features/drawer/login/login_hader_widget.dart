import 'package:flutter/cupertino.dart';




class LoginHaderWidgets extends StatelessWidget {
  const LoginHaderWidgets({
    super.key,

    required this.image,
    required this.title,
    required this.subTitle,

  });

  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Column(
      children: [


        Image(image: AssetImage(image),height: size.height * 0.2,),
        SizedBox(height: 20.0,),
        Text(title,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),

        Text(subTitle,textAlign: TextAlign.center,
        ),

      ],
    );
  }
}