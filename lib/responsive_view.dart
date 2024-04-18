import 'package:flutter/material.dart';
import 'constants.dart';

class RP {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakPoint;
  static bool isTab(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakPoint &&
      MediaQuery.of(context).size.width < tabBreakPoint;
  static bool isWeb(BuildContext context) => MediaQuery.of(context).size.width >= webBreakPoint;
  static bool isSizeLessThan(BuildContext context, int size) =>
      MediaQuery.of(context).size.width < size;
  static bool isSizeLessThanEqualsTo(BuildContext context, int size) =>
      MediaQuery.of(context).size.width <= size;
  static bool isSizeGreaterThan(BuildContext context, int size) =>
      MediaQuery.of(context).size.width > size;
  static bool isSizeGreaterThanEqualsTo(BuildContext context, int size) =>
      MediaQuery.of(context).size.width >= size;
}
