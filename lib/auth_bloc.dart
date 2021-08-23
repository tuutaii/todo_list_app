import 'dart:async';

import 'package:todo_list_app/widgets/fire_base.dart';
import 'package:todo_list_app/widgets/validation.dart';

class AuthBloc {
  var _firAuth = FirAuth();
  StreamController _usernameController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get userStream => _usernameController.stream;
  Stream get passStream => _passController.stream;

  bool isVaild(String username, String pass) {
    if (!Validations.isValidUser(username)) {
      _usernameController.sink.addError("Tài khoản không hợp lệ!");
      return false;
    }
    _usernameController.sink.add('OK');

    if (!Validations.isValidPass(pass)) {
      _passController.sink.addError("Mật khẩu phải trên 5 ký tự!");
      return false;
    }
    _passController.sink.add('OK');

    return true;
  }
  void signUp(String username, String pass ){
    _firAuth.signUp(username, pass);


  }

  void dispose() {
    _usernameController.close();
    _passController.close();
  }
}
