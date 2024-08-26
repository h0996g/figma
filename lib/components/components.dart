import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

MaterialButton svgIconNavigationBar(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path,
    BoxFit fit = BoxFit.contain}) {
  return MaterialButton(
    onPressed: () {},
    child: SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    ),
  );
}

SvgPicture svgIconNavigationBar2(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path,
    BoxFit fit = BoxFit.contain}) {
  return SvgPicture.asset(
    path,
    height: height,
    width: width,
    fit: fit,
    color: color,
  );
}

Row svgIconNavigationBar3(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path1,
    required String path2,
    BoxFit fit = BoxFit.contain}) {
  return Row(
    children: [
      SvgPicture.asset(
        path1,
        height: height,
        width: width,
        fit: fit,
        color: color,
      ),
      SvgPicture.asset(
        path2,
        height: height,
        width: width,
        fit: fit,
        color: color,
      ),
    ],
  );
}
