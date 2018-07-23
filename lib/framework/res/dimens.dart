import 'package:flutter/material.dart';

//region space
const space_zero = 0.0;
const space_tiny = 1.0;
const space_small = 4.0;
const space_normal = 8.0;
const space_big = 16.0;
const space_huge = 32.0;

const SPACE_ZERO = SizedBox(width: space_zero, height: space_zero);
const SPACE_TINY = SizedBox(width: space_tiny, height: space_tiny);
const SPACE_SMALL = SizedBox(width: space_small, height: space_small);
const SPACE_NORMAL = SizedBox(width: space_normal, height: space_normal);
const SPACE_BIG = SizedBox(width: space_big, height: space_big);
const SPACE_HUGE = SizedBox(width: space_huge, height: space_huge);
//endregion

//region text
const text_normal = 16.0;
const text_big = 18.0;
//endregion

//region elevation
const elevation_small = 2.0;
const elevation_normal = 4.0;
const elevation_big = 8.0;
//endregion

double onePixel(BuildContext context) {
  return 1 / MediaQuery.of(context).devicePixelRatio;
}
