import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/common/routes/app_pages.dart';



class NotfoundView extends StatefulWidget {
  const NotfoundView({super.key});

  @override
  State<NotfoundView> createState() => _NotfoundViewState();
}

class _NotfoundViewState extends State<NotfoundView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("路由没有找到")),
      body: ListTile(
        title: Text("返回首页"),
        subtitle: Text("get.offAllNamed(AppRoutes.Home)"),
        onTap: () => Get.offAllNamed(AppRoutes.HomePage),
      ),
    );
  }
}