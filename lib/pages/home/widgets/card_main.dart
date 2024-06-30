import 'package:flutter/material.dart';
import 'package:flutter_demon_getx/utils/constants/colors_constant.dart';
import 'package:get/get.dart';

class MainCard extends StatelessWidget {
  final String title;
  final Widget body;

  const MainCard({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Get.isDarkMode ? Colors.grey : MyColors.babyPink,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: MyColors.burgundy),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: body,
          ),
        ],
      ),
    );
  }
}
