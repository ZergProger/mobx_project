import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  void dispose() {
    super.dispose();
    controller.text = widget.dataValidation.emailText;
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller.text = widget.dataValidation.emailText;
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
                      builder: (context) => PopupPage(),
                    ));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Observer(
              builder: (context) => TextFormField(
                controller: controller,
                validator: widget.dataValidation.validatorEmail,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () => widget.dataValidation
                    .emailButton(context, _formKey, controller),
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
