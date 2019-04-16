library font_social_flutter;
import 'package:flutter/widgets.dart';

class MyIcon {
  static const IconData wechat = const _MyIconData(0xe66c);
  static const IconData alipay = const _MyIconData(0xe63b);
  static const IconData qq = const _MyIconData(0xe631);
  static const IconData scan = const _MyIconData(0xe7d4);
}

class _MyIconData extends IconData {
  const _MyIconData(int codePoint)
      : super(
    codePoint,
    fontFamily: 'MyIcon',
    fontPackage: 'font_social_flutter',
  );
}