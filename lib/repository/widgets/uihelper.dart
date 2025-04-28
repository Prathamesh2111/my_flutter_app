import 'package:flutter/material.dart';

class UiHelper {
  /// Returns an Image widget loading the given [img] from assets/images.
  /// Supports optional sizing, fitting, and alignment parameters.
  static Widget customImage({
    required String img,
    BoxFit fit = BoxFit.contain,
    double? width,
    double? height,
    Alignment alignment = Alignment.center,
  }) {
    return Image.asset(
      'assets/images/$img',
      fit: fit,
      width: width,
      height: height,
      alignment: alignment,
    );
  }
}