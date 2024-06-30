import 'package:flutter/material.dart';
import 'package:flutter_demon_getx/bindings/store_binding.dart';
import 'package:flutter_demon_getx/controllers/theme_controller.dart';
import 'package:flutter_demon_getx/pages/add_follower_count.dart';
import 'package:flutter_demon_getx/pages/add_followers.dart';
import 'package:flutter_demon_getx/pages/add_reviews.dart';
import 'package:flutter_demon_getx/pages/home/page.dart';
import 'package:flutter_demon_getx/pages/store_status.dart';
import 'package:flutter_demon_getx/pages/update_menu.dart';
import 'package:flutter_demon_getx/pages/update_store_name.dart';
import 'package:flutter_demon_getx/services/storage_service.dart';
import 'package:flutter_demon_getx/utils/app_theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
     MyApp({super.key});
    final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      initialBinding: StoreBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        
        GetPage(name: '/edit_name', page: () => UpdateStoreName()),
        GetPage(name: '/add_followers', page: () => AddFollowers()),
        GetPage(name: '/toggle_status', page: () => StoreStatus()),
        GetPage(name: '/edit_follower_count', page: () => AddFollowerCount()),
        GetPage(name: '/add_reviews', page: () => AddReviews()),
        GetPage(name: '/update_menu', page: () => const UpdateMenu()),
      ],
      home:  HomePage(),
    );
  }
}

