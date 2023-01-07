import 'package:flutter/material.dart';

class Model{

  static double screen_height = 0;
  static double screen_width = 0;
  static double appbar_height = 0;
  static double Statusbar_height = 0;
  static double Navigationbar_height = 0;
  static double white_screen_height = 0;

  getDimens(BuildContext context){
    screen_height = MediaQuery.of(context).size.height;
    screen_width = MediaQuery.of(context).size.width;

    appbar_height = kToolbarHeight;

    Statusbar_height = MediaQuery.of(context).padding.top;
    Navigationbar_height = MediaQuery.of(context).padding.bottom;

    white_screen_height = screen_height - Statusbar_height - Navigationbar_height;
  }

}