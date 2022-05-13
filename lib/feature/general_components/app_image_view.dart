import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_application_assessment/app/extentions/validation.dart';
import 'package:wallpaper_application_assessment/app/resources/app_colors.dart';
import 'package:wallpaper_application_assessment/app/resources/app_size.dart';

class APPImageView extends StatefulWidget {
  const APPImageView({
    final Key? key,
    required this.url,
    required this.width,
    required this.height,

  }) : super(key: key);

  /// url for image to load
  final String url;

  /// size of image for width
  final double width;

  /// size of image for height
  final double height;




  @override
  APPImageViewState createState() => APPImageViewState();
}

class APPImageViewState extends State<APPImageView>
    with ValidationMixin {
  bool showImage = false;
  @override
  void initState() {
    urlCheck();
    super.initState();
  }

  void urlCheck() {
    if (validWebSite(widget.url)) {
      showImage = true;
    } else {
      showImage = false;
    }
    setState(() {});
  }

  @override
  Widget build(final BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.s08),
      child: showImage
          ? CachedNetworkImage(
        errorWidget: (final context, final url, final error) =>
        const Icon(Icons.error),
        progressIndicatorBuilder:
            (final context, final url, final downloadProgress) =>
        downloadProgress.downloaded < AppSize.s100
            ? Center(
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
            color: AppColors.primary,
          ),
        )
            : Image.network(widget.url),
        //widget.postImageUrl,
        width: widget.width,
        height: widget.height,
        fit: BoxFit.fill,

        imageUrl: widget.url,
        imageBuilder: (final context, final imageProvider) => Container(
          height: widget.width,
          width: widget.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
          : const Icon(Icons.downloading),
    );
  }
}
