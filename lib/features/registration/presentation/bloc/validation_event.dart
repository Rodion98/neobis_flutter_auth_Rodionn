part of 'validation_bloc.dart';

@freezed
class ValidationEvent with _$ValidationEvent {
  const factory ValidationEvent.checkPassword({required String password, required GlobalKey<FormState> formKey}) =
      _CheckEmail;
}
