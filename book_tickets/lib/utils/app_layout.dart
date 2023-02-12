import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class AppLayout {
   static getSize(BuildContext context) {
     return MediaQuery.of(context).size;
   }

   static getScreenHeight() {
     return Get.height;
   }

   static getScreenWidth() {
     return Get.width ;
   }

   static getHeight(double pixels) {
     // gets screen proportion
     double x = getScreenHeight() / pixels;
     // returns screen proportion / screen height
     return getScreenHeight() / x;
   }

   static getWidth(double pixels) {
     // gets screen proportion
     double x = getScreenWidth() / pixels;
     // returns screen proportion / screen width
     return getScreenWidth() / x;
   }
}