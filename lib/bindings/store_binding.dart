import 'package:flutter_demon_getx/controllers/store_controller.dart';
import 'package:flutter_demon_getx/services/provider.dart';
import 'package:flutter_demon_getx/services/repository.dart';
import 'package:get/get.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController(
        repository: ReviewRepository(storeProvider: StoreProvider())));
  }
}