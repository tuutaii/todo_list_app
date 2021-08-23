class Validations {
  static bool isValidUser(String user) {
    return  user.length > 6 && user.contains('@');
  }
  static bool isValidPass(String pass) {
    return  pass.length > 5;
  }
  
}