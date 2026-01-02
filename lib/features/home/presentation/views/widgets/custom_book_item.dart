import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4, // width ratio to height ratio ,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageURL,
            errorWidget: (context, url, error) =>
                const Icon(Icons.error,),
        ),
      ),
    );
  }
}
