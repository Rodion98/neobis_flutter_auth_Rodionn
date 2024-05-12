import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/network/entity/state_status.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_auth/features/authorization/domain/useCase/login_use_case.dart';
import 'package:neobis_flutter_auth/features/authorization/domain/useCase/sign_out_use_case.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  LoginUseCase loginUseCase;
  SignOutUseCase signOutUseCase;
  AuthorizationBloc({
    required this.loginUseCase,
    required this.signOutUseCase,
  }) : super(
          const AuthorizationState(
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_Login>(_onLogin);
    on<_SignOut>(_signOut);
  }

  Future<void> _signOut(
    _SignOut event,
    Emitter<AuthorizationState> emit,
  ) async {
    await signOutUseCase.call(null);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
      ),
    );
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<AuthorizationState> emit,
  ) async {
    emit(
      state.copyWith(
        stateStatus: const StateStatus.loading(),
      ),
    );
    final login = event.login;
    final password = event.password;
    final loginModel = LoginModel(
      username: login,
      password: password,
    );
    final result = await loginUseCase.call(
      loginModel,
    );
    result.fold((l) {
      emit(
        state.copyWith(
          stateStatus: StateStatus.failure(
            message: l.message ?? l.toString(),
          ),
        ),
      );
    }, (r) {
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
        ),
      );
    });
  }
}
