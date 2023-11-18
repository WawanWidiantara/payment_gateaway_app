import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:payment_gateaway_app/app/constant/colors.dart';
import 'package:payment_gateaway_app/app/modules/cart/views/cart_view.dart';
import 'package:payment_gateaway_app/app/modules/history/views/history_view.dart';
import 'package:payment_gateaway_app/app/modules/home/views/home_view.dart';
import 'package:payment_gateaway_app/app/modules/profile/views/profile_view.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (controller) {
      return Scaffold(
        body: FadeIndexedStack(
          beginOpacity: 0.0,
          endOpacity: 1.0,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 200),
          index: controller.tabIndex,
          children: const [
            HomeView(),
            CartView(),
            HistoryView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            backgroundColor: AppColors.mainBackground,
            selectedItemColor: AppColors.primary,
            type: BottomNavigationBarType.fixed,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 18,
            items: const [
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                  color: AppColors.primary,
                ),
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                  color: AppColors.greyForm,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/icons/cart.png'),
                  color: AppColors.primary,
                ),
                icon: Stack(
                  children: [
                    ImageIcon(
                      AssetImage('assets/icons/cart.png'),
                      color: AppColors.greyForm,
                    ),
                  ],
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/icons/history.png'),
                  color: AppColors.primary,
                ),
                icon: Stack(
                  children: [
                    ImageIcon(
                      AssetImage('assets/icons/history.png'),
                      color: AppColors.greyForm,
                    ),
                  ],
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/icons/profile.png'),
                  color: AppColors.primary,
                ),
                icon: ImageIcon(
                  AssetImage('assets/icons/profile.png'),
                  color: AppColors.greyForm,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    });
  }
}
