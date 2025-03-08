import 'package:flutter/material.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/phone_page/phone_page.dart';
import 'package:mobx_project/utils/routes_name.dart';

final RegisterForm dataValidation = RegisterForm();

Map<String, WidgetBuilder> generateRoutes() {
  return {
    route(RegPage): (_) => RegPage(
          dataValidation: dataValidation,
        ),
  };
}
