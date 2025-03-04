import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';

class RegPage extends StatelessWidget {
  RegPage({super.key, RegisterForm? dataValidation})
      : dataValidation = dataValidation ?? RegisterForm();

  final RegisterForm dataValidation;
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('number'),
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
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    dataValidation.validator(true);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailPage(),
                        ));
                  } else {
                    dataValidation.validator(false);
                  }
                },
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
