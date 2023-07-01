import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myoldbook/src/features/splasescreen/splasescreen_controler.dart';
import 'package:myoldbook/src/strings/home_image.dart';

class SplashScreenFirst extends StatelessWidget {
  SplashScreenFirst({super.key});

  final splasecontroller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {

    splasecontroller.startAnimation();
    return Scaffold(

      body: Stack(

        children: [

          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),


              top: 200,
              left: splasecontroller.animate.value ? 70 : -30,

              child:AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splasecontroller.animate.value ? 1:0,
                child: Column(

                  children: [

                  Text.rich(
                    TextSpan(
                      children: [

                        TextSpan(text: "My",style: TextStyle(color: Colors.red,fontSize: 45,fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline )),
                        TextSpan(text: "Old Book",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,decoration: TextDecoration.underline)),
                      ]
                    )

                  )


                  ],
                ),
              ),
            ),
          ),

          Obx(
                () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),

                bottom: splasecontroller.animate.value ? 200 : -30,
                left: 50,
                child: Container(

                    height: 300,
                    width: 300,
                    child: Image(image: AssetImage(splaselogo),
                    )




                )),
          ),
        ],


      ),

    );
  }


}