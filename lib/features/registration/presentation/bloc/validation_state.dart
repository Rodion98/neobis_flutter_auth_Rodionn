part of 'validation_bloc.dart';

class ValidationState {
  final ValidationModel validationModel;

  ValidationState(this.validationModel);
}

class Initial extends ValidationState {
  Initial(super.validationModel);
}

class Validation extends ValidationState {
  Validation(
    super.validationModel,
  );
}

class ValidationModel {
  final bool? lenght;
  final bool? number;
  final bool? specChar;
  final bool? upperCase;
  final String password;
  final bool passwordSimilar;
  final bool email;
  final bool login;

  ValidationModel({
    required this.lenght,
    required this.number,
    required this.specChar,
    required this.upperCase,
    required this.password,
    required this.passwordSimilar,
    required this.email,
    required this.login,
  });

  bool get allPasswordValid {
    return (lenght ?? false) && (number ?? false) && (specChar ?? false) && (upperCase ?? false);
  }

  bool get isButtonAvailable {
    return allPasswordValid && email && login && passwordSimilar;
  }

  factory ValidationModel.initial() {
    return ValidationModel(
        lenght: null,
        number: null,
        specChar: null,
        upperCase: null,
        password: '',
        email: false,
        login: false,
        passwordSimilar: false);
  }

  ValidationModel copyWith({
    bool? lenght,
    bool? number,
    bool? specChar,
    bool? upperCase,
    String? password,
    bool? passwordSimilar,
    bool? email,
    bool? login,
  }) {
    return ValidationModel(
        lenght: lenght ?? this.lenght,
        number: number ?? this.number,
        specChar: specChar ?? this.specChar,
        upperCase: upperCase ?? this.upperCase,
        passwordSimilar: passwordSimilar ?? this.passwordSimilar,
        password: password ?? this.password,
        email: email ?? this.email,
        login: login ?? this.login);
  }
}
