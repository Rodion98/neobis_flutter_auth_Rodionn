// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_flutter_auth/core/network/http_client.dart' as _i4;
import 'package:neobis_flutter_auth/features/authorization/data/data_source/impl/login_data_source_impl.dart'
    as _i6;
import 'package:neobis_flutter_auth/features/authorization/data/data_source/login_data_source.dart'
    as _i5;
import 'package:neobis_flutter_auth/features/authorization/data/repository/login_repo.dart'
    as _i8;
import 'package:neobis_flutter_auth/features/authorization/domain/repository/repository.dart'
    as _i7;
import 'package:neobis_flutter_auth/features/authorization/domain/useCase/login_use_case.dart'
    as _i9;
import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart'
    as _i16;
import 'package:neobis_flutter_auth/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i11;
import 'package:neobis_flutter_auth/features/registration/data/data_source/registration_data_source.dart'
    as _i10;
import 'package:neobis_flutter_auth/features/registration/data/repository/registration_repo.dart'
    as _i13;
import 'package:neobis_flutter_auth/features/registration/domain/repository/repository.dart'
    as _i12;
import 'package:neobis_flutter_auth/features/registration/domain/useCase/registration_use_case.dart'
    as _i14;
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart'
    as _i15;
import 'package:neobis_flutter_auth/injection/injection_module.dart' as _i17;

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
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.HttpClient>(() => _i4.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i5.LoginDataSource>(
        () => _i6.LoginDataSourceImpl(gh<_i4.HttpClient>()));
    gh.factory<_i7.LoginRepo>(
        () => _i8.LoginRepoImpl(gh<_i5.LoginDataSource>()));
    gh.singleton<_i9.LoginUseCase>(
        () => _i9.LoginUseCase(repo: gh<_i7.LoginRepo>()));
    gh.factory<_i10.RegistrationDataSource>(
        () => _i11.RegistrationDataSourceImpl(gh<_i4.HttpClient>()));
    gh.factory<_i12.RegistrationRepo>(
        () => _i13.RegistrationRepoImpl(gh<_i10.RegistrationDataSource>()));
    gh.singleton<_i14.RegistrationUseCase>(
        () => _i14.RegistrationUseCase(repo: gh<_i12.RegistrationRepo>()));
    gh.singleton<_i15.ValidationBloc>(() => _i15.ValidationBloc(
        registrationUseCase: gh<_i14.RegistrationUseCase>()));
    gh.singleton<_i16.AuthorizationBloc>(
        () => _i16.AuthorizationBloc(loginUseCase: gh<_i9.LoginUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
