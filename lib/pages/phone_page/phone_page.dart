import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/register.dart';
import 'package:mobx_project/utils/routes_name.dart';

class RegPage extends StatelessWidget {
  RegPage({super.key});

  final dataValidation = Register();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reg'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null) {
                  return 'field is empty';
                } else if (value.length == 9) {
                  dataValidation.dataValidation();
                }
                return '';
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
                  if (dataValidation.value == true) {
                    route(EmailPage);
                  }
                },
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
