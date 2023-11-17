import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/constant/icons.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.primary,
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: SvgPicture.asset(
              AppLogo.logoFull,
            ),
          ),
        ),
      ),
    );
  }
}
