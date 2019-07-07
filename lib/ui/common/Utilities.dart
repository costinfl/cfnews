import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:cfnews/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class PageUtilities {
  static Future<Null> launchURL(String url) async {
    String encodedUrl = Uri.encodeComponent(url);
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url (encoded: $encodedUrl)';
    }
  }

  static Widget retrieveNetworkImage(String url,
      {double width, double height}) {
    const fixedWidth = 800.0;
    const fixedHeight = 200.0;
    try {
      if (url == null || url == "") {
        return FadeInImage.assetNetwork(
          placeholder: ImageAssets.missingImage,
          image: url ?? "",
          fit: BoxFit.contain,
        );
      }
      if (url.endsWith(".svg")) {
        return SvgPicture(
          AdvancedNetworkSvg(
            url,
            SvgPicture.svgByteDecoder,
            useDiskCache: true,
            cacheRule: CacheRule(maxAge: const Duration(days: 7)),
          ),
          fit: BoxFit.cover,
          placeholderBuilder: (context) => FadeInImage.assetNetwork(
              placeholder: ImageAssets.missingImage, image: url ?? ""),
        );
      }

      var imageLoadFailed = false;
      var advancedImage = AdvancedNetworkImage(
        url,
        useDiskCache: true,
        cacheRule: CacheRule(maxAge: const Duration(days: 7)),
        fallbackAssetImage: ImageAssets.missingImage,
        loadFailedCallback: () => imageLoadFailed = true,
      );
      var theImage = imageLoadFailed
          ? Image(
              image: advancedImage,
              fit: BoxFit.cover,
              width: fixedWidth,
              height: fixedHeight,
            )
          : Image(
              image: advancedImage,
              fit: BoxFit.cover,
            );
      return theImage;
    } on Exception catch (e) {
      print("Exception thrown, returning null: " + e.toString());
      return null;
    }
  }
}
