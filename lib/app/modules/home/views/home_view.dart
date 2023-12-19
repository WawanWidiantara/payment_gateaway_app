import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/constant/icons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('HomeView'),
        //   centerTitle: true,
        // ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Selamat datang, ',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <InlineSpan>[
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Libur',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                      blurRadius: 20,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
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
                    contentPadding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
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
                    hintText: 'Cari disini',
                    hintStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400
                        // color: AppColors.greyForm,
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
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: SizedBox(
                  width: Get.width,
                  height: 90,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: 65,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.current.value = index;
                                  // controller.fetchItemsData(controller
                                  //     .items[index]
                                  //     .toLowerCase());
                                },
                                child: SizedBox(
                                  child: Obx(() => Container(
                                        width: 65,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          color:
                                              controller.current.value == index
                                                  ? AppColors.primary
                                                  : AppColors.isLunas,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: SvgPicture.asset(
                                            AppLogo.logoFull,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Text(
                                controller.items[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.greyForm,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Gap(20),
              Text("Produk tersedia",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
