import 'package:flutter/material.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/pages/phone_page/phone_page.dart';
import 'package:mobx_project/utils/routes_name.dart';

Map<String, WidgetBuilder> generateRoutes() {
  return {
    route(RegPage): (_) => RegPage(),
    route(EmailPage): (_) => EmailPage(),
  };
}
