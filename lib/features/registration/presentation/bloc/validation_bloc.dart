import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_flutter_auth/core/app/utils/validation.dart';

part 'validation_event.dart';
part 'validation_state.dart';
part 'validation_bloc.freezed.dart';

class ValidationBloc extends Bloc<ValidationEvent, ValidationState> with PasswordValidation {
  ValidationBloc() : super(const ValidationState.loading()) {
    on<_CheckEmail>(_checkPassword);
  }

  void _checkPassword(_CheckEmail event, Emitter<ValidationState> emit) {
    emit(const ValidationState.loading());
    PasswordValidation validation = PasswordValidation();
    String password = event.password;
    bool specChar = validation.hasSpecialChar(password);
    bool lenght = validation.isValidLength(password);
    bool number = validation.hasDigit(password);
    bool upperCase = validation.hasAlphabetic(password);
    List<bool> validationList = [lenght, number, specChar, upperCase];
    GlobalKey key = event.formKey;
    bool buttonStatus = validationList.every((element) => element == true && key == true);
    print(buttonStatus);

    emit(ValidationState.validationPassword(validationPassword: validationList, activeButton: buttonStatus));
  }
}
