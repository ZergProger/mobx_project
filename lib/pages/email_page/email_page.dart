import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({
    super.key,
    required this.dataValidation,
  });

  final RegisterForm dataValidation;

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage>
    with AutomaticKeepAliveClientMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController controllerEmail;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    controllerEmail =
        TextEditingController(text: widget.dataValidation.emailText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('email'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopupPage(
                        dataValidation: widget.dataValidation,
                      ),
                    ));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Observer(builder: (context) {
              controllerEmail.text = widget.dataValidation.emailText;
              return TextFormField(
                controller: controllerEmail,
                validator: widget.dataValidation.validatorEmail,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  widget.dataValidation.emailText = value;
                },
              );
            }),
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () => widget.dataValidation
                    .emailButton(context, _formKey, controllerEmail),
                child: Text('submit')),
          ],
        ),
      ),
    );
  }
}
