import 'package:bloc/bloc.dart';
import 'package:neobis_flutter_auth/core/app/utils/validation.dart';

part 'validation_event.dart';
part 'validation_state.dart';

class ValidationBloc extends Bloc<ValidationEvent, ValidationState> with PasswordValidation {
  ValidationBloc() : super(ValidationState(ValidationModel.initial())) {
    on<ValidationPassword>(_validationPassword);
    on<ValidationEmail>(_validationEmail);
    on<ValidationLogin>(_validationLogin);
    on<ValidationPasswordRepeat>(_validationPasswordRepeat);
    on<CheckValidation>(_validationCheck);
  }

  void _validationCheck(
    CheckValidation event,
    Emitter<ValidationState> emit,
  ) {}

  void _validationPasswordRepeat(
    ValidationPasswordRepeat event,
    Emitter<ValidationState> emit,
  ) {
    final password = event.passwordRepeat;
    String firstPassword = state.validationModel.password;
    final similar = passwordsValid(
      password,
      firstPassword,
    );
    emit(
      ValidationState(
        state.validationModel.copyWith(
          passwordSimilar: similar,
        ),
      ),
    );
  }

  void _validationLogin(
    ValidationLogin event,
    Emitter<ValidationState> emit,
  ) {
    final login = event.login;
    final boolLogin = login.isNotEmpty;

    emit(
      ValidationState(
        state.validationModel.copyWith(
          login: boolLogin,
        ),
      ),
    );
  }

  void _validationEmail(
    ValidationEmail event,
    Emitter<ValidationState> emit,
  ) {
    final email = event.email;
    final boolEmail = emailValidation(email);
    emit(
      ValidationState(
        state.validationModel.copyWith(
          email: boolEmail,
        ),
      ),
    );
  }

  void _validationPassword(
    ValidationPassword event,
    Emitter<ValidationState> emit,
  ) {
    final password = event.password;
    final specChar = hasSpecialChar(password);
    final lenght = isValidLength(password);
    final number = hasDigit(password);
    final upperCase = hasAlphabetic(password);
    emit(
      ValidationState(
        state.validationModel.copyWith(
          lenght: lenght,
          number: number,
          specChar: specChar,
          upperCase: upperCase,
          password: password,
        ),
      ),
    );
  }
}
