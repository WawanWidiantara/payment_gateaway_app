import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.primary),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {
                    Get.offAllNamed(Routes.GET_STARTED);
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text(
                    "Keluar",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainText),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
