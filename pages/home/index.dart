import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/common/routes/app_pages.dart';
import '../list_detail/index.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("首页1")),
      body: ListView(
        children: [
          ListTile(
            title:const Text("导航-命名路由 home>list"),
            subtitle:const Text("Get.toName('/home/list')"),
            onTap: () => Get.toNamed("/home/list"),
          ),
          ListTile(
            title:const Text("导航-命名路由 home>list>detail"),
            subtitle:const Text("Get.toName('/home/list/detail')"),
            onTap: () => Get.toNamed("/home/list/detail"),
          ),
          ListTile(
            title:const Text("导航 类对象"),
            subtitle:const Text("Get.to(DetailView)"),
            onTap: () => Get.to(DetailView()),
          ),
          ListTile(
            title:const Text("导航-清除上一个"),
            subtitle:const Text("Get.off('DetailView')"),
            onTap: () => Get.off(DetailView()),
          ),
          ListTile(
            title:const Text("导航-清除所有"),
            subtitle:const Text("Get.offAll('DetailView')"),
            onTap: () => Get.offAll(DetailView()),
          ),
          ListTile(
            title:const Text("导航-arguments传值+返回值"),
            subtitle:const Text("Get.toNamed('/home/list/detail,arguments:{'id':999}')"),
            onTap: () async{
              var result = await Get.toNamed(
                "/home/list/detail",
                arguments: {"id":999}
              );
              Get.snackbar("返回值", result["success"].toString());
            }
          ),
          ListTile(
            title:const Text("导航-parameters传值+返回值"),
            subtitle:const Text("Get.toNamed('/home/list/detail?id=666')"),
            onTap: () async{
              var result = await Get.toNamed(
                "/home/list/detail?id=666",
              );
              Get.snackbar("返回值", result["success"].toString());
            }
          ),
          ListTile(
            title:const Text("导航-参数传值+返回值"),
            subtitle:const Text("Get.toNamed('/home/list/detail/777')"),
            onTap: () async{
              var result = await Get.toNamed(
                "/home/list/detail/777",
              );
              Get.snackbar("返回值", result["success"].toString());
            }
          ),
          ListTile(
            title:const Text("导航-中间件+认证Auth"),
            subtitle:const Text("Get.toNamed('AppRoutes.My')"),
            onTap: () async{
              var result = await Get.toNamed(
                AppRoutes.My
              );
        
            }
          ),
        ],
      ),
    );
  }
}