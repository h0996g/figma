import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

//--------------------Mini Screen--------------------

  double get miniScreenWidth => MediaQuery.of(this).size.width * 0.25;
  double get miniScreenHeight => MediaQuery.of(this).size.height;
  double get miniScreenNavigationBarSmallwidth => miniScreenWidth * 0.11;
  double get miniScreenSpaceBetweenNav => height * 0.02;

  //---------------------------------------------------

// ---------------------------------------------------

// -------------------Big Screen---------------------
  double get bigScreenWidth => MediaQuery.of(this).size.width * 0.75;
  double get bigScreenHeight => MediaQuery.of(this).size.height;
  double get navigationBarBigScreenwidth =>
      (MediaQuery.of(this).size.width * 0.75) * 0.08;

  //---------------------------------------------------------
  double get iconSizeWidth => width * 0.03;
  double get iconSizeHeight => height * 0.03;

  double get fontSize => width * 0.08;
}
