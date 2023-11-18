import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/constant/icons.dart';
import 'package:payment_gateaway_app/app/modules/get_started/views/detail_register_view.dart';
import 'package:payment_gateaway_app/app/modules/get_started/views/login_view.dart';

class RegisterView extends GetView {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColors.mainText,
        ),
        backgroundColor: AppColors.mainBackground,
        title: const Text('Registrasi'),
        titleTextStyle: const TextStyle(
          color: AppColors.mainText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                child: TextFormField(
                  autofocus: false,
                  // controller: controller.emailController,
                  // validator: (value) {
                  //   // return controller.validateEmail(value!);
                  // },
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.greyForm,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                      child: SvgPicture.asset(
                        AppIcons.email,
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    hintText: 'Masukkan email anda',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.greyForm,
                    ),
                    filled: true,
                    fillColor: AppColors.isLunas,
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.isLunas),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.isLunas),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: TextFormField(
                  obscureText: true,
                  autofocus: false,
                  // controller: controller.emailController,
                  // validator: (value) {
                  //   // return controller.validateEmail(value!);
                  // },
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.greyForm,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 20, 0),
                      child: SvgPicture.asset(
                        AppIcons.password,
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    hintText: 'Masukkan password anda',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.greyForm,
                    ),
                    filled: true,
                    fillColor: AppColors.isLunas,
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.isLunas),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.isLunas),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: TextFormField(
                  obscureText: true,
                  autofocus: false,
                  // controller: controller.emailController,
                  // validator: (value) {
                  //   // return controller.validateEmail(value!);
                  // },
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.greyForm,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 20, 0),
                      child: SvgPicture.asset(
                        AppIcons.password,
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    hintText: 'Konfirmasi password anda',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.greyForm,
                    ),
                    filled: true,
                    fillColor: AppColors.isLunas,
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.isLunas),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.isLunas),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
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
                    Get.to(() => const DetailRegisterView());
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text(
                    "Selanjutnya",
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
              Text.rich(
                TextSpan(
                  text: 'Sudah punya akun? ',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <InlineSpan>[
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: GestureDetector(
                        onTap: () {
                          Get.off(() => const LoginView());
                          FocusScope.of(context).unfocus();
                        },
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
