import 'package:flutter/material.dart';

double height(context) {
  return MediaQuery.sizeOf(context).height;
}

double width(context) {
  return MediaQuery.sizeOf(context).width;
}

Orientation getOrientation(BuildContext context) {
  return MediaQuery.of(context).orientation;
}
