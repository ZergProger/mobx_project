import 'package:flutter/material.dart';
import 'package:mobx_project/main.dart';
import 'package:mobx_project/mobx/register_form.dart';

class SfpPage extends StatefulWidget {
  const SfpPage({
    super.key,
    required this.dataValidation,
  });

  final RegisterForm dataValidation;

  @override
  State<SfpPage> createState() => _SfpPageState();
}

class _SfpPageState extends State<SfpPage> with AutomaticKeepAliveClientMixin {
  late final TextEditingController controllerS;
  late final TextEditingController controllerF;
  late final TextEditingController controllerP;

  @override
  void initState() {
    controllerS = TextEditingController(text: widget.dataValidation.sText);
    controllerF = TextEditingController(text: widget.dataValidation.fText);
    controllerP = TextEditingController(text: widget.dataValidation.pText);
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('sfp'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controllerS,
              keyboardType: TextInputType.name,
              validator: (value) => widget.dataValidation.validatorSFP(value),
              onChanged: (value) =>
                  widget.dataValidation.sText = controllerS.text,
            ),
            const SizedBox(
              height: 1,
            ),
            TextFormField(
              controller: controllerF,
              keyboardType: TextInputType.name,
              validator: (value) => widget.dataValidation.validatorSFP(value),
              onChanged: (value) =>
                  widget.dataValidation.fText = controllerF.text,
            ),
            const SizedBox(
              height: 1,
            ),
            TextFormField(
              controller: controllerP,
              keyboardType: TextInputType.name,
              validator: (value) => widget.dataValidation.validatorSFP(value),
              onChanged: (value) =>
                  widget.dataValidation.pText = controllerP.text,
            ),
            const SizedBox(
              height: 1,
            ),
            ElevatedButton(
              onPressed: () => widget.dataValidation.buttonSFP(
                context,
                controllerS.text,
                controllerF.text,
                controllerP.text,
              ),
              child: const Text('submit'),
            ),
          ],
        ),
      ),
    );
  }
}
