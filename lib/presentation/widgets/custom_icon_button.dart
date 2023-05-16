import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/color.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
        iconSize: height ?? 0,
        padding: const EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: width ?? 0,
          height: height ?? 0,
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.paddingAll12:
        return const EdgeInsets.all(
          12,
        );
      default:
        return const EdgeInsets.all(
          9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.fillGrey100:
        return ColorConstant.grey100;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.roundedBorder14:
        return BorderRadius.circular(14);
      default:
        return BorderRadius.circular(10);
    }
  }
}

enum IconButtonShape {
  roundedBorder10,
  roundedBorder14,
}

enum IconButtonPadding {
  paddingAll9,
  paddingAll12,
}

enum IconButtonVariant {
  fillWhiteA700,
  fillGrey100,
}
