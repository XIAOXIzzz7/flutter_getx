

import 'package:get/get.dart';
import 'package:untitled1/common/middleware/router_auth.dart';
import 'package:untitled1/pages/login/index.dart';
import '../../pages/home/index.dart';
import '../../pages/list/index.dart';
import '../../pages/list_detail/index.dart';
import '../../pages/my/index.dart';
import '../../pages/notfound/index.dart';
part 'app_routes.dart';



class AppPages {
  static const INITIAL = "/home";
  // 404
  static final UnknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView()
  );
  //路由
  static final routes =[
    //白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),

    ),
    // 需要登录 中间件
    GetPage(
      name: AppRoutes.My,
      page: () => Myview(),
      middlewares: [
        RouteAuthMiddleware()
      ]
    ),
    GetPage(
      name: AppRoutes.HomePage,
      page: ()=>const HomeView(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page:() => DetailView(),
            ),
            GetPage(
              name: AppRoutes.Detail_ID,
              page:() => DetailView(),
            ),
          ]
        )
      ]
    ),
  ];

}