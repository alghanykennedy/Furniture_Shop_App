import 'package:flutter/material.dart';

class ColorConstant {
  static Color grey5001 = fromHex('#fcfcfc');

  static Color grey400 = fromHex('#bbbbbb');

  static Color grey500 = fromHex('#9a9390');

  static Color blueGrey100 = fromHex('#d7d7d7');

  static Color blueGrey400 = fromHex('#7a8d9c');

  static Color grey800 = fromHex('#494442');

  static Color grey200 = fromHex('#e7e7e7');

  static Color grey50 = fromHex('#f8f8f8');

  static Color grey100 = fromHex('#f6f6f6');

  static Color black900 = fromHex('#000000');

  static Color grey50001 = fromHex('#adadad');

  static Color grey20001 = fromHex('#eaebec');

  static Color black90014 = fromHex('#14000000');

  static Color blueGrey40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
