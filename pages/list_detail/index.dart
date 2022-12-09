import 'package:flutter/material.dart';
import 'package:get/get.dart';




class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  //定义 detail接收arguments方式的内容，可以接收空参数
  final details = Get.arguments as Map?;
  //定义 parameters接收parameters方式的内容
  final parameters = Get.parameters;
  _listshow(Map? val){
    if (val == null || val["id"]==null){
      return Container();
    }
    else{
      return 
      ListTile(
      title: Text("传值id=${val['id']}"),
      subtitle:const Text("Get.back(result:{'success':true})"),
      onTap: () => Get.back(result: {'success':true}),
    );
    }
      
    // return val==null
    // ?Container()
    // :ListTile(
    //   title: Text("传值id=${val['id']}"),
    //   subtitle: Text("Get.back(result:{'success':true})"),
    //   onTap: () => Get.back(result: {'success':true}),
    // );
  } 

  //路由传参方式
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("列表详情页")),
      body: ListView(
        children: [
          ListTile(
            title: Text("列表详情页面"),
            subtitle: Text('get.back()'),
            onTap: () => Get.back(),
          ),
          _listshow(details),
          _listshow(parameters)
         
        ],
      ),
    );
  }
}