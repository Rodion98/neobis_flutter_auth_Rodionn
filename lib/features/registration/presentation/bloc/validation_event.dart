part of 'validation_bloc.dart';

abstract class ValidationEvent {}

class ValidationPassword extends ValidationEvent {
  final String password;

  ValidationPassword({
    required this.password,
  });
}

class ValidationEmail extends ValidationEvent {
  final String email;
  ValidationEmail({
    required this.email,
  });
}

class ValidationLogin extends ValidationEvent {
  final String login;
  ValidationLogin({
    required this.login,
  });
}

class ValidationPasswordRepeat extends ValidationEvent {
  final String passwordRepeat;
  ValidationPasswordRepeat({
    required this.passwordRepeat,
  });
}

class RegistrationEvent extends ValidationEvent {
  final RegistrationModel registrationModel;
  RegistrationEvent({
    required this.registrationModel,
  });
}
