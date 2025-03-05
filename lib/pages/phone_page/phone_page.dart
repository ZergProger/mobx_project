import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';

class RegPage extends StatefulWidget {
  RegPage({super.key, RegisterForm? dataValidation})
      : dataValidation = dataValidation ?? RegisterForm();

  final RegisterForm dataValidation;

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> with AutomaticKeepAliveClientMixin {
  final TextEditingController controller = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('number'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailPage(),
                    ));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Observer(
              builder: (context) => TextFormField(
                controller: controller,
                validator: widget.dataValidation.validatorPhone,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    widget.dataValidation.isValid = true;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailPage(),
                        ));
                  } else {
                    widget.dataValidation.isValid = false;
                  }
                },
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
