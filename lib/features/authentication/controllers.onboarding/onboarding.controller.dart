import 'package:flutter/material.dart';
import 'package:flutter_project_trial/features/screens/login/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

/// variables
final pageController = PageController();
RxInt currentPageIndex =0.obs;              


/// update current index when page scroll
void updatePageIndicator(index) {
  currentPageIndex.value = index;
}

/// jump to specific dot selected page
void dotNavigationClick(index) {
  currentPageIndex.value = index;
  pageController.jumpTo(index);
}

/// Update current index and jump to next page
void nextPage() {
  if(currentPageIndex.value == 2){
    Get.offAll(const LoginScreen());
  } else {
    int page =currentPageIndex.value+1;
    pageController.jumpToPage(page);
  }
}

/// Update current index and jump to last page
void skipPage() {
  currentPageIndex.value=2;
  pageController.jumpToPage(2);
}

}



