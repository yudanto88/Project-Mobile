import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/routes/app_pages.dart';
import '../../../../style.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/background2.jpg'),
                  Text(
                    'Proud to Be A \nPet Adopter',
                    style: blackTextStyle2.copyWith(
                      fontSize: 32,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Looking for unconditional love? \n Visit the shelter today!',
                    style: greyTextStyle2.copyWith(
                      fontSize: 16,
                      height: 1.25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOMEPAGE);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: orangeColor,
                      ),
                      child: Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, backgroundColor: orangeColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
