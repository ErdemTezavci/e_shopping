import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key, 
    this.child, 
    this.width, 
    this.height, 
    this.margin,
    this.padding, 
    this.showBorder = false, 
    this.radius = TSizes.cardRadiusLg, 
    this.borderColor = TColors.darkGrey, 
    this.backgroundColor = TColors.borderPrimary, 
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}