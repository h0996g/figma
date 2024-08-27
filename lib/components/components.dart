import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgIconNavigationBar(
    {double? width,
    double? height,
    bool ischangecolor = true,
    Color color = Colors.grey,
    required String path,
    double paddingHeight = 0,
    BoxFit fit = BoxFit.contain}) {
  return IconButton(
    iconSize: height,

    // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
    padding: EdgeInsets.symmetric(
      vertical: paddingHeight,
    ),
    constraints: const BoxConstraints(),
    style: const ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap, // the '2023' part
    ),
    onPressed: () {},
    icon: SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: ischangecolor ? color : null,
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
