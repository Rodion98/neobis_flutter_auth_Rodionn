// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart' as _i20;
import 'package:neobis_flutter_auth/core/network/http_client.dart' as _i6;
import 'package:neobis_flutter_auth/core/services/auth_service.dart' as _i3;
import 'package:neobis_flutter_auth/core/services/secure_storage_service.dart'
    as _i17;
import 'package:neobis_flutter_auth/features/authorization/data/data_source/impl/login_data_source_impl.dart'
    as _i8;
import 'package:neobis_flutter_auth/features/authorization/data/data_source/login_data_source.dart'
    as _i7;
import 'package:neobis_flutter_auth/features/authorization/data/repository/login_repo.dart'
    as _i10;
import 'package:neobis_flutter_auth/features/authorization/domain/repository/repository.dart'
    as _i9;
import 'package:neobis_flutter_auth/features/authorization/domain/useCase/login_use_case.dart'
    as _i11;
import 'package:neobis_flutter_auth/features/authorization/domain/useCase/sign_out_use_case.dart'
    as _i18;
import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart'
    as _i21;
import 'package:neobis_flutter_auth/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i13;
import 'package:neobis_flutter_auth/features/registration/data/data_source/registration_data_source.dart'
    as _i12;
import 'package:neobis_flutter_auth/features/registration/data/repository/registration_repo.dart'
    as _i15;
import 'package:neobis_flutter_auth/features/registration/domain/repository/repository.dart'
    as _i14;
import 'package:neobis_flutter_auth/features/registration/domain/useCase/registration_use_case.dart'
    as _i16;
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart'
    as _i19;
import 'package:neobis_flutter_auth/injection/injection_module.dart' as _i22;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AuthService>(() => _i3.AuthService());
    gh.factory<_i4.Dio>(() => registerModule.dio);
    gh.singleton<_i5.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i6.HttpClient>(() => _i6.HttpClient(gh<_i4.Dio>()));
    gh.factory<_i7.LoginDataSource>(
        () => _i8.LoginDataSourceImpl(gh<_i6.HttpClient>()));
    gh.factory<_i9.LoginRepo>(() => _i10.LoginRepoImpl(
          gh<_i7.LoginDataSource>(),
          gh<_i3.AuthService>(),
        ));
    gh.singleton<_i11.LoginUseCase>(
        () => _i11.LoginUseCase(repo: gh<_i9.LoginRepo>()));
    gh.factory<_i12.RegistrationDataSource>(
        () => _i13.RegistrationDataSourceImpl(gh<_i6.HttpClient>()));
    gh.factory<_i14.RegistrationRepo>(
        () => _i15.RegistrationRepoImpl(gh<_i12.RegistrationDataSource>()));
    gh.singleton<_i16.RegistrationUseCase>(
        () => _i16.RegistrationUseCase(repo: gh<_i14.RegistrationRepo>()));
    gh.singleton<_i17.SecureStorageService>(
        () => _i17.SecureStorageService(gh<_i5.FlutterSecureStorage>()));
    gh.singleton<_i18.SignOutUseCase>(
        () => _i18.SignOutUseCase(repo: gh<_i9.LoginRepo>()));
    gh.singleton<_i19.ValidationBloc>(() => _i19.ValidationBloc(
        registrationUseCase: gh<_i16.RegistrationUseCase>()));
    gh.singleton<_i20.AppRouter>(() => _i20.AppRouter(gh<_i3.AuthService>()));
    gh.singleton<_i21.AuthorizationBloc>(() => _i21.AuthorizationBloc(
          loginUseCase: gh<_i11.LoginUseCase>(),
          signOutUseCase: gh<_i18.SignOutUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i22.RegisterModule {}
