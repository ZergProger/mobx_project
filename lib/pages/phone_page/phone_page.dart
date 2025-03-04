import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/register.dart';
import 'package:mobx_project/utils/routes_name.dart';

class RegPage extends StatelessWidget {
  RegPage({super.key});

  final Register dataValidation = Register();
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reg'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Поле не может быть пустым';
                } else if (value.length != 10) {
                  return 'Введите номер телефона';
                }
                return null; // Если все ОК, ошибки нет
              },
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    dataValidation.dataValidation();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailPage(),
                        ));
                  } else {
                    dataValidation.value == false;
                  }
                },
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
