import 'package:flutter/material.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/pages/phone_page/phone_page.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';
import 'package:mobx_project/utils/routes.dart';
import 'package:mobx_project/utils/routes_name.dart';

final RegisterForm dataValid = RegisterForm();
void main() {
  RegPage(
    dataValidation: dataValid,
  );
  EmailPage(
    dataValidation: dataValid,
  );

  PopupPage(
    dataValidation: dataValid,
  );

  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: route(RegPage),
      routes: generateRoutes(),
    );
  }
}
