import 'dart:convert';

import 'package:flutter_demon_getx/models/reviews.dart';
import 'package:flutter_demon_getx/services/storage_service.dart';
import 'package:flutter_demon_getx/utils/constants/key.dart';
import 'package:get/get.dart';
//import 'package:get_storage/get_storage.dart';

class StoreProvider {
  final StorageService _storageService = Get.find<StorageService>();

  List<StoreReviews> readReviews() {
    var reviews = <StoreReviews>[];
   // jsonDecode(_storageService.read(reviewsKey).toString())
     //   .forEach((e) => reviews.add(StoreReviews.fromJson(e)));
    return reviews;
  }

  void writeReview(List<StoreReviews> reviews) {
    //_storageService.write(reviewsKey, jsonEncode(reviews));
  }
}
