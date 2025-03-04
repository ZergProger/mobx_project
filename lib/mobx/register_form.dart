import 'package:mobx/mobx.dart';

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
  void validator(bool dataValid) {
    isValid = dataValid;
  }
}
