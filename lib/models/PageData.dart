import 'package:flutter/material.dart';

class PageData{
  Map<String,Widget> routesMapping= {};
  void addPage(String route,Widget widget){
    routesMapping[route]=widget;
  }

  Widget? getPage(String route) {
    return routesMapping[route];
  }
}