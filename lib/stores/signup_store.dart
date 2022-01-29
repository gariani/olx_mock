import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:olx_mock/helpers/extensions.dart';

part 'signup_store.g.dart';

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {
  @observable
  String name = "";

  @action
  void setName(String value) => name = value;

  @computed
  bool get nameValid => name.isNotEmpty && name.length > 6;
  String get nameError {
    if (nameValid) {
      return "";
    } else if (name.isEmpty) {
      return 'campo obrigatório';
    } else
      return 'nome muito curto';
  }

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != "" && email.isEmailValid();
  String get emailError {
    if (emailValid) {
      return "";
    } else if (email.isEmpty) {
      return "campo obrigatório!";
    } else {
      return "email inválido!";
    }
  }

  @observable
  String phone = "";

  @action
  void setPhone(String value) => phone = value;

  @computed
  bool get phoneValid => phone != "" && phone.length >= 10;
  String get phoneError {
    if (phoneValid) {
      return "";
    } else if (phone.isEmpty) {
      return "campo obrigatório";
    } else {
      return "celular obrigatório";
    }
  }

  @observable
  String pass1 = "";

  @action
  void setPass1(String value) => pass1 = value;

  @compute
  bool get pass1Valid => pass1.length >= 6;
  String get pass1Error {
    if (pass1Valid) {
      return "";
    } else if (pass1.isEmpty) {
      return "campo obrigatório";
    } else {
      return "senha muito curta";
    }
  }

  @observable
  String pass2 = "";

  @action
  void setPass2(String value) => pass2 = value;

  @computed
  bool get pass2Valid => pass2 != "" && pass2 == pass1;
  String get pass2Error {
    if (pass2Valid) {
      return "";
    } else {
      return "senhas não idênticas!";
    }
  }
}
