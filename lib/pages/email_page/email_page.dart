import 'package:flutter/material.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';

class EmailPage extends StatefulWidget {
  EmailPage({super.key, RegisterForm? dataValidation})
      : dataValidation = dataValidation ?? RegisterForm();

  final RegisterForm dataValidation;

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController controller = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
              validator: widget.dataValidation.validatorEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () =>
                    widget.dataValidation.emailButton(context, _formKey),
                child: Text('submit'))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
