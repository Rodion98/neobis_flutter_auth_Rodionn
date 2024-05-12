part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    required final StateStatus stateStatus,
  }) = _AuthorizationState;
}
