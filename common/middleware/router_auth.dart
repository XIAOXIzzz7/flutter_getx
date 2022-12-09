import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled1/common/routes/app_pages.dart';



class RouteAuthMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route){
    Future.delayed(Duration(seconds: 1),()=>Get.snackbar("提示", "请先登录App"));
    return RouteSettings(name: AppRoutes.Login);
  }

}