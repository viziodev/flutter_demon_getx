import 'package:flutter/material.dart';
import 'package:flutter_demon_getx/models/reviews.dart';
import 'package:flutter_demon_getx/services/repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class StoreController extends GetxController {
  ReviewRepository repository;
  StoreController({required this.repository});
   final storeName = 'Store Management'.obs;
   final followerCount = 0.obs;
   final storeStatus = true.obs;
   final followerList = [].obs;
   final reviews = <StoreReviews>[].obs;
   final followerController = TextEditingController();
  final storeNameEditingController = TextEditingController();
  final reviewEditingController = TextEditingController();

  final reviewNameController = TextEditingController(); 
  int storeFollowerCount = 0;

   static StoreController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    reviews.assignAll(repository.readReviews());
    ever(reviews, (_) => repository.writeReviews(reviews));
  }

  void incrementStoreFollowers() {
    storeFollowerCount++;
    update();
  }

  updateStoreName(String name) {
    storeName(name);
  }

  updateFollowerCount() {
    followerCount(followerCount.value + 1);
  }

  void storeStatusOpen(bool isOpen) {
    storeStatus(isOpen);
  }

  updateFollowerList(List<String> list) {
    followerList.assignAll(list);
  }

  addNewFollower(String name) {
    followerList.add(name);
  }

  void addReview(StoreReviews storeReviews) {
    reviews.add(storeReviews);
  }

}