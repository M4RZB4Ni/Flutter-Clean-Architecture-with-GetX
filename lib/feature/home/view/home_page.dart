import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/base/base_view.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/feature/home/components/app_wallpaper_listview.dart';
import 'package:wallpaper_application_assessment/feature/home/domain/controller/home_controller.dart';

class HomePage extends BaseView<HomePageController>{

  @override
  Future<bool> onWillPop(final BuildContext context) async {
    return false;
  }

  @override
  Widget body(final BuildContext context) {
    return APPWallpaperListView(key: const Key('homeListView'),wallpapers: controller.wallpapers, imageSizes: [Get.width,AppSize.s300],onTap: controller.goToDetailsPage,);
  }

}
