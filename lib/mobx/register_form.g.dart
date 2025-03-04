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

  late final _$_RegisterFormActionController =
      ActionController(name: '_RegisterForm', context: context);

  @override
  void selectedRegAndReset(dynamic value) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.selectedRegAndReset');
    try {
      return super.selectedRegAndReset(value);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validator(bool dataValid) {
    final _$actionInfo = _$_RegisterFormActionController.startAction(
        name: '_RegisterForm.validator');
    try {
      return super.validator(dataValid);
    } finally {
      _$_RegisterFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isValid: ${isValid},
selectedRegion: ${selectedRegion},
selectedDistrict: ${selectedDistrict}
    ''';
  }
}
