import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/utils/routes.dart';

class RegPage extends StatefulWidget {
  const RegPage({
    super.key,
    required this.dataValidation,
  });

  final RegisterForm dataValidation;

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> with AutomaticKeepAliveClientMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController controllerPhone;

  @override
  void initState() {
    controllerPhone =
        TextEditingController(text: widget.dataValidation.phoneText);
    super.initState();
  }

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
                      builder: (context) => EmailPage(
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
          children: <Widget>[
            Observer(
              builder: (context) => TextFormField(
                controller: controllerPhone,
                validator: widget.dataValidation.validatorPhone,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  widget.dataValidation.phoneText = controllerPhone.text;
                },
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  dataValidation.phoneButton(
                      context, _formKey, controllerPhone, dataValidation);
                },
                child: Text('submit')),
          ],
        ),
      ),
    );
  }
}
