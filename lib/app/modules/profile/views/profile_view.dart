import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/routes/app_pages.dart';
import '../controllers/profile_controller.dart';
import '../../../../style.dart';
import 'dart:io';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var Menu = ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: greyColor2,
        ),
        child: Icon(
          Icons.settings,
          color: orangeColor,
        ),
      ),
      title: Text(
        'Settings',
        style: blackTextStyle.copyWith(fontSize: 14),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: greyColor2,
        ),
        child: Icon(Icons.arrow_downward),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            // onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return HomePage();
            //   }));
            // },
            onPressed: () {
              Get.toNamed(Routes.HOMEPAGE);
            },

            icon: const Icon(Icons.arrow_back),
            color: orangeColor,
          ),
          title: Text(
            'Profile',
            style: blackTextStyle2.copyWith(fontSize: 20),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.notifications,
                color: Color(0xffff9900),
              ),
            )
          ],
        ),
        body: Obx(() {
          return Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 100,
                      backgroundImage: controller.imagePath.isNotEmpty
                          ? FileImage(File(controller.imagePath.toString()))
                          : null),
                ),
                TextButton(
                    onPressed: () {
                      controller.getImage();
                    },
                    child: Text(
                      'Pilih gambar',
                      style: blackTextStyle.copyWith(fontSize: 12),
                    )),
                TextButton(
                    onPressed: () {
                      controller.getImages();
                    },
                    child: Text(
                      'Ambil gambar',
                      style: blackTextStyle.copyWith(fontSize: 12),
                    )),
                Menu,
                SizedBox(
                  height: 10,
                ),
                Menu,
                SizedBox(
                  height: 10,
                ),
                Menu,
                SizedBox(
                  height: 10,
                ),
                Menu,
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        }));
  }
}
