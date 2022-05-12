import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper_application_assessment/app/base/base_view.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/feature/details/components/app_details_footer.dart';
import 'package:wallpaper_application_assessment/feature/details/domain/controller/details_page_controller.dart';
import 'package:wallpaper_application_assessment/feature/general_components/app_button.dart';
import 'package:wallpaper_application_assessment/feature/general_components/app_image_view.dart';

class DetailsPage extends BaseView<DetailsPageController> {
  @override
  Widget body(final BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          APPImageView(
              url: controller.wallpaper.path!,
              width: Get.width,
              height: AppSize.s500.r,),
          APPDetailsFooter(controller.wallpaper),
          Obx(() => APPButtonActive(
                // activeBTN: !controller.downloadLoading.value,
                loading: !controller.downloadLoading.value,
                title: 'Download Image',
                width: AppSize.s150,
                onTap: () => controller.downloadImage(
                    imagePath: controller.wallpaper.path!,),
              ),),

          Obx(() => APPButtonActive(
            loading: !controller.setBackground.value,
            title: 'Set to Background',
            width: AppSize.s150,
            onTap: () => controller.setBackgroundMobile(),
          ),)
        ],
      ),
    );
  }
}
