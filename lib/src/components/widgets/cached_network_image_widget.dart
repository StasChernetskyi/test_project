import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  const CachedNetworkImageWidget({required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => const SizedBox(
          height: 250.0,
          child: Center(
            child: SizedBox(
              height: 100.0,
              width: 100.0,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
      ),
    );
  }
}
