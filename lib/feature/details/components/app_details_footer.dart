import 'package:flutter/cupertino.dart';
import 'package:wallpaper_application_assessment/app/messages/app_messages.dart';
import 'package:wallpaper_application_assessment/app/resources/app_spacing.dart';
import 'package:wallpaper_application_assessment/app/resources/app_text_style.dart';
import 'package:wallpaper_application_assessment/data/data_models/wallpapaers/response/get_wallpaper_response.dart';

class APPDetailsFooter extends StatelessWidget{

  APPDetailsFooter(this.wallpaper);

  /// for show image data pass wallpaper object there
  Wallpaper wallpaper;

  @override
  Widget build(final BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
          Padding(
            padding: AppSpacing.s17Top,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${AppMessage.dFavo} ${wallpaper.favorites}',style: AppTextStyles.bodyText1),
                Text('${AppMessage.dCategory} ${wallpaper.category}',style: AppTextStyles.bodyText1),
              ],
            ),
          ),
          Padding(
            padding: AppSpacing.s17Top,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${AppMessage.dViews} ${wallpaper.views}',style: AppTextStyles.bodyText1),
                Text('${AppMessage.dResolution} ${wallpaper.resolution}',style: AppTextStyles.bodyText1),
              ],
            ),
          ),
    ],);
  }

}
