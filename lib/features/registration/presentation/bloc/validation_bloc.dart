import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/features/registration/domain/useCase/registration_use_case.dart';

part 'validation_event.dart';
part 'validation_state.dart';

@singleton
class ValidationBloc extends Bloc<ValidationEvent, ValidationState> with PasswordValidation {
  final RegistrationUseCase registrationUseCase;

  ValidationBloc({required this.registrationUseCase})
      : super(
          ValidationState(
            ValidationModel.initial(),
          ),
        ) {
    on<ValidationPassword>(_validationPassword);
    on<ValidationEmail>(_validationEmail);
    on<ValidationLogin>(_validationLogin);
    on<ValidationPasswordRepeat>(_validationPasswordRepeat);

    on<RegistrationEvent>(_registration);
  }

  Future<void> _registration(
    RegistrationEvent event,
    Emitter<ValidationState> emit,
  ) async {
    final registrationModel = event.registrationModel;
    await registrationUseCase.call(
      registrationModel,
    );
  }

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
          passwordRepeat: password,
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
          loginString: login,
        ),
      ),
    );
  }

  void _validationEmail(
    ValidationEmail event,
    Emitter<ValidationState> emit,
  ) {
    final email = event.email;
    final boolEmail = emailValidation(
      email,
    );
    emit(
      ValidationState(
        state.validationModel.copyWith(
          emailString: email,
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
    final specChar = hasSpecialChar(
      password,
    );
    final lenght = isValidLength(
      password,
    );
    final number = hasDigit(
      password,
    );
    final upperCase = hasAlphabetic(
      password,
    );
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
