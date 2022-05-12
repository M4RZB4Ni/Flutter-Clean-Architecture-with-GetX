import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper_application_assessment/app/resources/app_colors.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';
import 'package:wallpaper_application_assessment/feature/general_components/app_image_view.dart';

class APPWallpaperListView extends StatefulWidget {
  const APPWallpaperListView(
      {final Key? key,
      required this.wallpapers,
      this.onTap,
      required this.imageSizes,})
      : super(key: key);

  @override
  APPWallpaperListViewState createState() => APPWallpaperListViewState();

  /// for show images as List you must pass wallpapers as list
  final List<Wallpaper>? wallpapers;

  /// for implementation of onTab pass your function to this
  final ValueChanged<int>? onTap;

  /// for set width & height of project example: imageSizes[0]=width & imageSizes[1]=height
  final List<double> imageSizes;
}

class APPWallpaperListViewState extends State<APPWallpaperListView> {
  @override
  Widget build(final BuildContext context) {
    return ListView.separated(
      itemCount: widget.wallpapers!.length,
      itemBuilder: (final BuildContext ctx, final int i) {
        return InkWell(
            onTap: () => widget.onTap!(i),
            child: APPImageView(
          url: widget.wallpapers![i].path!,
          width: widget.imageSizes[0],
          height: widget.imageSizes[1],
        ),);
      },
      separatorBuilder: (final BuildContext ctx, final int i) {
        return Divider(
          height: AppSize.s04.r,
          color: AppColors.primaryLight,
        );
      },
    );
  }
}
