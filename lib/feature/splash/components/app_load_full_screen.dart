import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper_application_assessment/app/messages/app_messages.dart';
import 'package:wallpaper_application_assessment/app/resources/app_colors.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/app/resources/app_spacing.dart';
import 'package:wallpaper_application_assessment/app/resources/app_text_style.dart';

class APPLoadFullScreen extends StatelessWidget{

  const APPLoadFullScreen({final Key? key}): super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: AppSpacing.s20All,
            child: Text(AppMessage.splashLoading,style: AppTextStyles.headline4,),
          ),
          Divider(color: AppColors.background,height: AppSize.s04.r,),
          Padding(
            padding: AppSpacing.s30All,
            child: Text(AppMessage.splashTip,style: AppTextStyles.headline6,),
          ),
        ],
      ),
    );
  }
}
