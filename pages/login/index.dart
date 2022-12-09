import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/common/routes/app_pages.dart';



class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("登录")),
      body: ListTile(
        title: Text("返回首页"),
        subtitle: Text("Get.offAllNamed(AppRoutes.Home)"),
        onTap: () => Get.offAllNamed(AppRoutes.HomePage),
      ),
    );
  }
}