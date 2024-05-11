part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.started() = _Started;
  const factory AuthorizationEvent.login({required String login, required String password}) = _Login;
}
