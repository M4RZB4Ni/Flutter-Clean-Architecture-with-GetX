import 'package:flutter/material.dart';
import 'package:wallpaper_application_assessment/app/resources/app_colors.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/app/resources/app_spacing.dart';


class APPButtonActive extends StatelessWidget {
  const APPButtonActive({
    final Key? key,
    required this.title,
    this.backgroundCustomColor = AppColors.primary,
    this.height=AppSize.s48,
    this.suffixWidget,
    this.prefixWidget,
    required this.onTap,
    this.padding=AppSpacing.s16All,
    this.loading = false,
    this.width=AppSize.s120,
    this.radius = AppSize.s08,
  }) : super(key: key);

  /// title for show in button
  final String title;

  /// pass function to implement onTap
  final VoidCallback? onTap;

  /// for set padding pass EdgeInsets from AppSpacing
  final EdgeInsets padding;

  /// set width of widget as double
  final double width;

  /// set height of widget as double
  final double height;

  /// if you want suffixWidget pass it here
  final Widget? suffixWidget;

  /// if you want prefixWidget pass it here
  final Widget? prefixWidget;

  /// set this var as bool when U want load state
  final bool loading;

  /// pass color from AppColor class to change background, the default is Primary
  final Color? backgroundCustomColor;

  ///for set borderRadius pass a double value
  final double radius;

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: padding ,
      child: InkWell(
        onTap: !loading?onTap:null,
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: AppColors.primaryDark ,


          ),
          child: loading
              ? const CircularProgressIndicator(
            color: AppColors.primaryLight,
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefixWidget == null)
                const SizedBox()
              else
                prefixWidget!,
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
