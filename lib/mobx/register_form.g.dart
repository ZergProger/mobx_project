// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_form.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterForm on _RegisterForm, Store {
  late final _$isValidAtom =
      Atom(name: '_RegisterForm.isValid', context: context);

  @override
  bool get isValid {
    _$isValidAtom.reportRead();
    return super.isValid;
  }

  @override
  set isValid(bool value) {
    _$isValidAtom.reportWrite(value, super.isValid, () {
      super.isValid = value;
    });
  }

  late final _$regionAtom =
      Atom(name: '_RegisterForm.region', context: context);

  @override
  String get region {
    _$regionAtom.reportRead();
    return super.region;
  }

  @override
  set region(String value) {
    _$regionAtom.reportWrite(value, super.region, () {
      super.region = value;
    });
  }

  late final _$rayonAtom = Atom(name: '_RegisterForm.rayon', context: context);

  @override
  String get rayon {
    _$rayonAtom.reportRead();
    return super.rayon;
  }

  @override
  set rayon(String value) {
    _$rayonAtom.reportWrite(value, super.rayon, () {
      super.rayon = value;
    });
  }

  late final _$selectedRegionAtom =
      Atom(name: '_RegisterForm.selectedRegion', context: context);

  @override
  String? get selectedRegion {
    _$selectedRegionAtom.reportRead();
    return super.selectedRegion;
  }

  @override
  set selectedRegion(String? value) {
    _$selectedRegionAtom.reportWrite(value, super.selectedRegion, () {
      super.selectedRegion = value;
    });
  }

  late final _$selectedDistrictAtom =
      Atom(name: '_RegisterForm.selectedDistrict', context: context);

  @override
  String? get selectedDistrict {
    _$selectedDistrictAtom.reportRead();
    return super.selectedDistrict;
  }

  @override
  set selectedDistrict(String? value) {
    _$selectedDistrictAtom.reportWrite(value, super.selectedDistrict, () {
      super.selectedDistrict = value;
    });
  }

  late final _$phoneTextAtom =
      Atom(name: '_RegisterForm.phoneText', context: context);

  @override
  String get phoneText {
    _$phoneTextAtom.reportRead();
    return super.phoneText;
  }

  @override
  set phoneText(String value) {
    _$phoneTextAtom.reportWrite(value, super.phoneText, () {
      super.phoneText = value;
    });
  }

  late final _$emailTextAtom =
      Atom(name: '_RegisterForm.emailText', context: context);

  @override
  String get emailText {
    _$emailTextAtom.reportRead();
    return super.emailText;
  }

  @override
  set emailText(String value) {
    _$emailTextAtom.reportWrite(value, super.emailText, () {
      super.emailText = value;
    });
  }

  late final _$sTextAtom = Atom(name: '_RegisterForm.sText', context: context);

  @override
  String get sText {
    _$sTextAtom.reportRead();
    return super.sText;
  }

  @override
  set sText(String value) {
    _$sTextAtom.reportWrite(value, super.sText, () {
      super.sText = value;
    });
  }

  late final _$fTextAtom = Atom(name: '_RegisterForm.fText', context: context);

  @override
  String get fText {
    _$fTextAtom.reportRead();
    return super.fText;
  }

  @override
  set fText(String value) {
    _$fTextAtom.reportWrite(value, super.fText, () {
      super.fText = value;
    });
  }

  late final _$pTextAtom = Atom(name: '_RegisterForm.pText', context: context);

  @override
  String get pText {
    _$pTextAtom.reportRead();
    return super.pText;
  }

  @override
  set pText(String value) {
    _$pTextAtom.reportWrite(value, super.pText, () {
      super.pText = value;
    });
  }

  late final _$dataAtom = Atom(name: '_RegisterForm.data', context: context);

  @override
  BioModel get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(BioModel value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$_RegisterFormActionController =
      ActionController(name: '_RegisterForm', context: context);

  @override
  void updateData() {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.updateData');
    try {
      return super.updateData();
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void popupButton(BuildContext context, RegisterForm dataValidation) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.popupButton');
    try {
      return super.popupButton(context, dataValidation);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectedRegAndReset(String value) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.selectedRegAndReset');
    try {
      return super.selectedRegAndReset(value);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void phoneButton(BuildContext context, GlobalKey<FormState> formKey,
      TextEditingController controller, RegisterForm dataValidation) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.phoneButton');
    try {
      return super.phoneButton(context, formKey, controller, dataValidation);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorPhone(String? value) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.validatorPhone');
    try {
      return super.validatorPhone(value);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorEmail(String? value) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.validatorEmail');
    try {
      return super.validatorEmail(value);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorSFP(String? value) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.validatorSFP');
    try {
      return super.validatorSFP(value);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSelectedPopum(String value) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.onSelectedPopum');
    try {
      return super.onSelectedPopum(value);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buttonSFP(
      BuildContext context, String sText, String fText, String pText) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.buttonSFP');
    try {
      return super.buttonSFP(context, sText, fText, pText);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void emailButton(BuildContext context, GlobalKey<FormState> formKey,
      TextEditingController controller) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.emailButton');
    try {
      return super.emailButton(context, formKey, controller);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isValid: ${isValid},
region: ${region},
rayon: ${rayon},
selectedRegion: ${selectedRegion},
selectedDistrict: ${selectedDistrict},
phoneText: ${phoneText},
emailText: ${emailText},
sText: ${sText},
fText: ${fText},
pText: ${pText},
data: ${data}
    ''';
  }
}
