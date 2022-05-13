import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/app/resources/app_spacing.dart';
import 'package:wallpaper_application_assessment/app/resources/app_text_style.dart';

class APPPercentageIndicator extends StatefulWidget{
  const APPPercentageIndicator({final Key? key, required this.percentage}) : super(key: key);

  @override
  APPPercentageIndicatorState createState() => APPPercentageIndicatorState();

  /// for set percentage as Int
  final int percentage;
}

class APPPercentageIndicatorState extends State<APPPercentageIndicator>{
  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: AppSpacing.s16All,
      child: Text(widget.percentage.toString(),style: AppTextStyles.overline.copyWith(fontSize: AppSize.s16.r),),
    );
  }


}
