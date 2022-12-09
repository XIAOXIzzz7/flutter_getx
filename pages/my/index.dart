import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/common/routes/app_pages.dart';

class Myview extends StatelessWidget {
  const Myview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的")),
      body: ListTile(
        title: Text("返回首页"),
        onTap: () => Get.offAllNamed(AppRoutes.HomePage),
      ),
    );
  }
}