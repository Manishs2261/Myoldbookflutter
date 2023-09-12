import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myoldbook/src/features/bottom_navigation_bar/bottom_navigatiion.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;


  Future startAnimation() async {

    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 2000));

    // Get.to(WelcomeScreen());
    Get.off( ButtomNavigationbutton());


    // Navigator.pushReplacement(context, MaterialPageRoute(
    //     builder: (context) => WelcomeScreen()));



  }
}