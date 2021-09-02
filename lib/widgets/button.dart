import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final double? radius;

  Button(
      {@required this.text,
      @required this.onPressed,
      this.width = 0.0,
      this.height = 0.0,
      this.color,
      this.radius = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width == 0.0 ? Get.width : width,
        constraints: BoxConstraints.tightForFinite(),
        height: this.height);
  }
}
