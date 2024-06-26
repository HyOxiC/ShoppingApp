import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/screens/home/home.dart';
import 'package:flutter_project_trial/features/screens/settings/settings.dart';
import 'package:flutter_project_trial/features/shop/screens/store.dart';
import 'package:flutter_project_trial/features/shop/screens/widgets/wish_list.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = TestHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 60,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: darkMode ? TestColors.black : TestColors.white,
            indicatorColor: darkMode
                ? TestColors.white.withOpacity(0.1)
                : TestColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const TestShopScreen(),
    const WishlistScreen(),
    const SettingsScreen()
  ];
}
