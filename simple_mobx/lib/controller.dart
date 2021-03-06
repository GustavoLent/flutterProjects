import 'package:mobx/mobx.dart';
import 'models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Este campo é obrigatório!";
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "Este campo é obrigatório!";
    } else if (!client.email.contains("@")) {
      return "Insira um formato válido de e-mail!";
    }
    return null;
  }

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }
}
