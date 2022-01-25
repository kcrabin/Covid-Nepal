import 'package:covid_nepal/modules/controllers/home_controller.dart';
import 'package:covid_nepal/modules/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put(HomeController(), permanent: true);
      }),
      debugShowCheckedModeBanner: false,
      title: 'Covid Nepal',
      home: HomeView(),
    );
  }
}
