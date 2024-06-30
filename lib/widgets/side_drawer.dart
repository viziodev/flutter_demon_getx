import 'package:flutter/material.dart';
import 'package:flutter_demon_getx/utils/constants/colors_constant.dart';
import 'package:get/get.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           DrawerHeader(
            child: Text(
              'GetX Store',
              textAlign: TextAlign.center,
              style: TextStyle(
                color:
               
                        Get.isDarkMode ? MyColors.spaceCadet : MyColors.spaceBlue,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
              leading: const Icon(
                 Icons.change_circle_sharp,
                 color:
                   MyColors.spaceBlue,
              ),
              title: const Text(
                "Change Store Name",
                style: TextStyle(
                  fontSize: 18.0,
                  color:
                      MyColors.spaceBlue,
                ),
              ),
              onTap: () {
                // closes the drawer and goes to another screen
                Get.offAndToNamed('/edit_name');
                //Get.back();
              }),
          ListTile(
            leading: const Icon(
              Icons.add_reaction_sharp,
              color: MyColors.spaceBlue,
            ),
            title: const Text(
              "Add Followers",
              style: TextStyle(
                fontSize: 18.0,
                color:  MyColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/add_followers'),
          ),
          ListTile(
            leading: const Icon(
              Icons.add_task_sharp,
              color:
                   MyColors.spaceBlue,
            ),
            title: const Text(
              "Increment Followers",
              style:  TextStyle(
                fontSize: 18.0,
                color:
                    MyColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/edit_follower_count'),
          ),
          ListTile(
            leading: const Icon(
              Icons.toggle_on_sharp,
              color:MyColors.spaceBlue,
            ),
            title: const Text(
              "Toggle Store Status",
              style: TextStyle(
                fontSize: 18.0,
                color: MyColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/toggle_status'),
          ),
          ListTile(
            leading: const Icon(
              Icons.add_comment_sharp,
              color:
                 MyColors.spaceBlue,
            ),
            title: const Text(
              "Add Reviews",
              style: TextStyle(
                fontSize: 18.0,
                color:
                   MyColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/add_reviews'),
          ),
          
        ],
      ),
    );
  }
}