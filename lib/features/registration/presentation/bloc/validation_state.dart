part of 'validation_bloc.dart';

@freezed
class ValidationState with _$ValidationState {
  const factory ValidationState.loading() = _ValidationStateStart;
  const factory ValidationState.validationPassword(
      {required List<bool> validationPassword, required bool activeButton}) = _ValidationStateValidation;
}
