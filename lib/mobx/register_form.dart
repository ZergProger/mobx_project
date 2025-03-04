import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';
import 'package:mobx_project/pages/sfp_page/sfp_page.dart';

// Include generated file
part 'register_form.g.dart';

class RegisterForm = _RegisterForm with _$RegisterForm;

abstract class _RegisterForm with Store {
  @observable
  bool isValid = false;

  @observable
  String? selectedRegion;

  @observable
  String? selectedDistrict;

  @action
  void selectedRegAndReset(value) {
    selectedRegion = value;
    selectedDistrict = null;
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
  void onSelectedPopum(String? value) {
    selectedDistrict = value;
  }

  @action
  popupButton(BuildContext context) {
    (selectedRegion != null && selectedDistrict != null)
        ? () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SfpPage(),
                ));
          }
        : null;
  }

  @action
  void emailButton(BuildContext context, GlobalKey<FormState> formKey) {
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
