import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class TransparentImage extends StatelessWidget {
  final String image;
  final BoxFit? fit;
  final Color? color;
  const TransparentImage(this.image, {Key? key, this.fit, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: MemoryImage(kTransparentImage),
      image: AssetImage(image),
      fit: fit,
      fadeInDuration: const Duration(milliseconds: 300),
    );
  }
}
