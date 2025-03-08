import 'package:flutter/material.dart';
import 'package:mobx_project/pages/phone_page/phone_page.dart';
import 'package:mobx_project/utils/routes.dart';
import 'package:mobx_project/utils/routes_name.dart';

void main() {
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
