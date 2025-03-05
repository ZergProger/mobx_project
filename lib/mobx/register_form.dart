import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';
import 'package:mobx_project/pages/sfp_page/sfp_page.dart';

part 'register_form.g.dart';

class RegisterForm = _RegisterForm with _$RegisterForm;

abstract class _RegisterForm with Store {
  @observable
  bool isValid = false;

  @observable
  String? selectedRegion;

  @observable
  String? selectedDistrict;

  @observable
  String phoneText = '';

  @observable
  String emailText = '';

  @observable
  String sText = '';

  @observable
  String fText = '';

  @observable
  String pText = '';

  @action
  void selectedRegAndReset(String value) {
    selectedRegion = value;
    selectedDistrict = null;
  }

  @action
  void phoneButton(BuildContext context, GlobalKey<FormState> formKey) {
    if (formKey.currentState?.validate() == true) {
      isValid = true;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EmailPage(),
          ));
    } else {
      isValid = false;
    }
  }

  @action
  String? validatorPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле не может быть пустым';
    } else if (value.length != 10) {
      return 'Введите номер телефона';
    }
    return null;
  }

  @action
  String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле не может быть пустым';
    } else if (!value.contains('@')) {
      return 'нет @';
    }
    return null;
  }

  @action
  void onSelectedPopum(String value) {
    selectedDistrict = value;
  }

  @action
  void emailButton(BuildContext context, GlobalKey<FormState> formKey,
      TextEditingController controller) {
    emailText = controller.text;
    if (formKey.currentState?.validate() == true) {
      isValid = true;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PopupPage()),
      );
    } else {
      isValid = false;
    }
  }
}
