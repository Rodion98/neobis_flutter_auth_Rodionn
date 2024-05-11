part of io_ui;

mixin class PasswordValidation {
  bool isValidLength(String password) {
    return password.length >= 8 && password.length <= 15;
  }

  bool hasAlphabetic(String password) {
    return password.contains(RegExp(r'[a-z]')) && password.contains(RegExp(r'[A-Z]'));
  }

  bool hasDigit(String password) {
    return password.contains(RegExp(r'[0-9]'));
  }

  bool hasSpecialChar(String password) {
    return password.contains(RegExp(r'[!@#$%^&*(),.?":{}|]'));
  }

  // bool emailValidation(String email) {
  //   return email.contains('@') && email.contains('.');
  // }

  bool emailValidation(String email) {
    // Проверка на наличие '@' и '.'
    if (!email.contains('@') || !email.contains('.')) {
      return false;
    }

    // Проверка на наличие символов перед '@'
    if (email.indexOf('@') == 0) {
      return false;
    }

    // Проверка на наличие символа после '@'
    if (email.lastIndexOf('@') == email.length - 1) {
      return false;
    }

    // Проверка на наличие символа после '.'
    if (email.lastIndexOf('.') == email.length - 1) {
      return false;
    }

    return true;
  }

  bool passwordsValid(String password, String passwordCheck) {
    return password == passwordCheck;
  }

  bool isValidPassword(String password) {
    return isValidLength(password) && hasAlphabetic(password) && hasDigit(password) && hasSpecialChar(password);
  }
}
