import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_auth/features/authorization/domain/useCase/login_use_case.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  LoginUseCase loginUseCase;
  AuthorizationBloc({required this.loginUseCase}) : super(const _Initial()) {
    on<_Login>(_onLogin);
  }

  Future<void> _onLogin(_Login event, Emitter<AuthorizationState> emit) async {
    try {
      emit(const AuthorizationState.initial());
      final login = event.login;
      final password = event.password;
      print(password);
      print(login);
      final loginModel = LoginModel(username: login, password: password);
      print(loginModel);
      await loginUseCase.call(loginModel);
    } catch (_) {}
  }
}
