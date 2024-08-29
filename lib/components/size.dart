import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

//--------------------Mini Screen--------------------

  double get miniScreenWidth => MediaQuery.of(this).size.width * 0.25;
  double get onlyminiScreenWidth =>
      miniScreenWidth - miniScreenNavigationBarSmallwidth;
  double get miniScreenHeight => MediaQuery.of(this).size.height;
  double get miniButtonNavHight => miniScreenHeight * 0.16;
  double get miniScreenHeightOnly => miniScreenHeight - miniButtonNavHight;
  double get miniScreenNavigationBarSmallwidth => miniScreenWidth * 0.12;
  double get miniScreenSpaceBetweenNav => height * 0.02;

  // nav bar
  double get toggelnavigationBarHight => miniButtonNavHight * 0.47;
  double get priceNavigationBarHight =>
      miniButtonNavHight - toggelnavigationBarHight;

  //---------------------------------------------------

// ---------------------------------------------------

// -------------------Big Screen---------------------
  double get bigScreenWidth => MediaQuery.of(this).size.width * 0.75;
  double get bigScreenHeight => MediaQuery.of(this).size.height;
  double get navigationBarBigScreenwidth => bigScreenWidth * 0.08;
  double get bigScreenWidthOnly => bigScreenWidth - navigationBarBigScreenwidth;
  double get appBarBigScreenHight => bigScreenHeight * 0.11;
  double get bigScreenHeightOnly => bigScreenHeight - appBarBigScreenHight;
  double get toggelButtonBigScreenHight => bigScreenHeight * 0.05;

  //---------------------------------------------------------
  double get iconSizeWidth => width * 0.03;
  double get iconSizeHeight => height * 0.03;

  double get fontSize => width * 0.08;
}
