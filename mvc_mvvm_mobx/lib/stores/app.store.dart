import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String picture = 'https://picsum.photos/200/200';

  @observable
  String token = '';

  @action
  void setUser(
    String newName,
    String newEmail,
    String newPicture,
    String newToken,
  ) {
    name = newName;
    email = newEmail;
    picture = newPicture;
    token = newToken;
  }
}
