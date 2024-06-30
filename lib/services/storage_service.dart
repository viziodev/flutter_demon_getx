import 'package:flutter_demon_getx/utils/constants/key.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  late GetStorage _box;

  Future<StorageService> init() async {
    _box = GetStorage();
    await _box.writeIfNull(reviewsKey, []);
    return this;
  }

  //T read<T>(String key) {
    //return _box.read(key);
  //}

  //void write(String key, dynamic value) async {
   // await _box.write(key, value);
  //}
}