import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/constant/icons.dart';
import 'package:payment_gateaway_app/app/modules/get_started/views/login_view.dart';

class DetailRegisterView extends GetView {
  const DetailRegisterView({Key? key}) : super(key: key);
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
        title: const Text('Data Pribadi'),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nama Lengkap',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainText,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
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
                    hintText: 'Masukkan nama lengkap anda',
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
                height: 10,
              ),
              const Text(
                'Jenis Kelamin',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainText,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(
                      value: "laki-laki",
                      child: Text("Laki-laki",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyForm,
                          ))),
                  DropdownMenuItem(
                      value: "perempuan",
                      child: Text("Perempuan",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyForm,
                          ))),
                ],
                onChanged: (newValue) {
                  // print(newValue);
                  // controller.setSelected(newValue);
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                  hintText: 'Pilih jenis kelamin',
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
                // value: controller.selectedGender.value,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Tanggal Lahir',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainText,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: TextFormField(
                  readOnly: true,
                  autofocus: false,
                  onTap: () {
                    // controller.selectDate(context);
                  },
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 20, 0),
                      child: SvgPicture.asset(
                        AppIcons.password,
                      ),
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    hintText: 'dd/mm/yyyy',
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
                height: 10,
              ),
              const Text(
                'Nomor Hp',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainText,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                    hintText: '08xxxxxxxxxx',
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
                    Get.offAll(() => const LoginView());
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
