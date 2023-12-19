import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/constant/icons.dart';
import 'package:payment_gateaway_app/app/modules/get_started/views/login_view.dart';
import 'package:payment_gateaway_app/app/modules/get_started/views/register_view.dart';

import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: SvgPicture.asset(
                  AppLogo.logo,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Selamat Datang',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.mainText,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Belanja dengan percaya diri, karena kami menawarkan berbagai metode pembayaran yang aman dan terjamin.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainText,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 40,
              ),
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
                    Get.off(() => const LoginView());
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text(
                    "Masuk",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainText),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor: const MaterialStatePropertyAll(
                          AppColors.mainBackground),
                      shape: MaterialStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                            side: const BorderSide(
                                color: AppColors.mainText, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                      )),
                  onPressed: () {
                    Get.off(() => const RegisterView());
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text(
                    "Registrasi",
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
