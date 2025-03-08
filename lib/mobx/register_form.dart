import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_project/data/data_repos/re_write.dart';
import 'package:mobx_project/pages/bio_page/bio_page.dart';
import 'package:mobx_project/pages/email_page/email_page.dart';
import 'package:mobx_project/pages/popup_page/popup_page.dart';
import 'package:mobx_project/pages/sfp_page/sfp_page.dart';

part 'register_form.g.dart';

class RegisterForm = _RegisterForm with _$RegisterForm;

abstract class _RegisterForm with Store {
  @observable
  bool isValid = false;

  @observable
  String region = '';

  @observable
  String rayon = '';

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

  @observable
  Load data = Load();

  @action
  void updateData() {
    data.phoneText = phoneText;
    data.emailText = emailText;
    data.sText = sText;
    data.fText = fText;
    data.pText = pText;
    data.regionText = region;
    data.rayonText = rayon;
  }

  @action
  void popupButton(
    BuildContext context,
    RegisterForm dataValidation,
  ) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SfpPage(
            dataValidation: dataValidation,
          ),
        ));
  }

  @action
  void selectedRegAndReset(String value) {
    selectedRegion = value;
    selectedDistrict = null;
  }

  @action
  void phoneButton(BuildContext context, GlobalKey<FormState> formKey,
      TextEditingController controller, RegisterForm dataValidation) {
    if (formKey.currentState?.validate() == true) {
      data.phoneText = controller.text;
      isValid = true;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EmailPage(
              dataValidation: dataValidation,
            ),
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
    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return 'Введите корректный email';
    }
    return null;
  }

  @action
  String? validatorSFP(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле не может быть пустым';
    }
    if (!RegExp(r"^[А-ЯЁ][а-яё]+$").hasMatch(value)) {
      return 'Введите корректное имя';
    }
    return null;
  }

  @action
  void onSelectedPopum(
    String value,
  ) {
    selectedDistrict = value;
  }

  @action
  void buttonSFP(
    BuildContext context,
    String sText,
    String fText,
    String pText,
  ) {
    data.sText = sText;
    data.fText = fText;
    data.pText = pText;

    updateData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BioPage(
            dataValidation: this as RegisterForm), // ✅ Передаём текущий объект
      ),
    );
  }

  @action
  void emailButton(BuildContext context, GlobalKey<FormState> formKey,
      TextEditingController controller) {
    data.emailText = controller.text;
    if (formKey.currentState?.validate() == true) {
      isValid = true;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PopupPage(
              dataValidation:
                  this as RegisterForm), // ✅ Передаём текущий объект
        ),
      );
    } else {
      isValid = false;
    }
  }
}
