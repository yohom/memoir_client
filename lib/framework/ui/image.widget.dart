import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:memoir/framework/ui.dart';

class ImageWidget extends BaseStatelessWidget {
  final String imageUrl;

  const ImageWidget({this.imageUrl});

  @override
  Widget delegateBuild(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
    );
  }
}
