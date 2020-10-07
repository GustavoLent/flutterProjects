import 'package:mvc_mvvm_mobx/models/user.model.dart';
import 'package:mvc_mvvm_mobx/view-models/signup.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "1",
      name: "Gustavo",
      email: "gu@email.com",
      picture: "https://picsum.photos/200/200",
      role: "jedi",
      token: "awpeihfslbj0128yrhfjasb.sfhaslfsadk.sdafljadshflk",
    );
  }
}
