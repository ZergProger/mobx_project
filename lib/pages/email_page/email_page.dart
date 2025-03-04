import 'package:flutter/material.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';

class EmailPage extends StatelessWidget {
  EmailPage({super.key, RegisterForm? dataValidation})
      : dataValidation = dataValidation ?? RegisterForm();

  final RegisterForm dataValidation;
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Поле не может быть пустым';
                } else if (value.contains('@')) {
                  return null;
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
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
                          builder: (context) => PopupPage(),
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
