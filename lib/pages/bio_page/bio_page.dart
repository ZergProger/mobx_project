import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/mobx/register_form.dart';

class BioPage extends StatelessWidget {
  const BioPage({
    super.key,
    required this.dataValidation,
  });

  final RegisterForm dataValidation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bio'),
      ),
      body: Observer(
        builder: (context) => Center(
          child: Column(
            children: [
              Text('номер'),
              Text(dataValidation.data.phoneText.isNotEmpty
                  ? dataValidation.data.phoneText
                  : "Нет данных"),
              Text('почта'),
              Text(dataValidation.data.emailText.isNotEmpty
                  ? dataValidation.data.emailText
                  : "Нет данных"),
              Text('фио'),
              Text(dataValidation.data.sText.isNotEmpty
                  ? dataValidation.data.sText
                  : "Нет данных"),
              Text(dataValidation.data.fText.isNotEmpty
                  ? dataValidation.data.fText
                  : "Нет данных"),
              Text(dataValidation.data.pText.isNotEmpty
                  ? dataValidation.data.pText
                  : ""),
              Text('город'),
              Text(dataValidation.data.regionText.isNotEmpty
                  ? dataValidation.data.regionText
                  : "Нет данных"),
              Text(dataValidation.data.rayonText.isNotEmpty
                  ? dataValidation.data.rayonText
                  : "Нет данных"),
            ],
          ),
        ),
      ),
    );
  }
}
