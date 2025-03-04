import 'package:mobx/mobx.dart';

// Include generated file
part 'register.g.dart';

// This is the class used by rest of your codebase
class Register = _Register with _$Register;

// The store-class
abstract class _Register with Store {
  @observable
  bool value = false;

  @action
  void dataValidation() {
    value = true;
  }
}
