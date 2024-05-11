// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:neobis_flutter_auth/features/authorization/data/data_source/impl/login_data_source_impl.dart';
// import 'package:neobis_flutter_auth/features/authorization/data/repository/login_repo.dart';
// import 'package:neobis_flutter_auth/features/authorization/domain/useCase/login_use_case.dart';
// import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart';
// import 'package:neobis_flutter_auth/features/registration/data/data_source/registration_data_source.dart';
// import 'package:neobis_flutter_auth/features/registration/data/repository/registration_repo.dart';
// import 'package:neobis_flutter_auth/features/registration/domain/useCase/registration_use_case.dart';
// import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';

// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// final getIt = GetIt.instance;

// Dio buildDioClient() {
//   final dio = Dio();
//   dio.interceptors.add(
//     PrettyDioLogger(requestBody: true, requestHeader: true, request: true),
//   );
//   return dio;
// }

// void setupDependencies() {
//   final dio = buildDioClient();
//   getIt.registerSingleton<Dio>(
//     Dio(),
//   );

//   getIt.registerSingleton<RegistrationDataSource>(RegistrationDataSource(
//     dio: dio,
//   ));

//   getIt.registerSingleton<LoginDataSource>(LoginDataSource(
//     dio: dio,
//   ));

//   // getIt.registerSingleton<CharacterMapper>(
//   //   CharacterMapper(),
//   // );

//   getIt.registerSingleton<RegistrationRepoImpl>(
//     RegistrationRepoImpl(getIt<RegistrationDataSource>()),
//   );

//   getIt.registerSingleton<LoginRepoImpl>(
//     LoginRepoImpl(getIt<LoginDataSource>()),
//   );

//   getIt.registerSingleton<RegistrationUseCase>(
//     RegistrationUseCase(
//       repo: getIt<RegistrationRepoImpl>(),
//     ),
//   );

//   getIt.registerSingleton<LoginUseCase>(
//     LoginUseCase(
//       repo: getIt<LoginRepoImpl>(),
//     ),
//   );

//   getIt.registerSingleton<ValidationBloc>(
//     ValidationBloc(
//       registrationUseCase: getIt<RegistrationUseCase>(),
//     ),
//   );
//   getIt.registerSingleton<AuthorizationBloc>(
//     AuthorizationBloc(
//       loginUseCase: getIt<LoginUseCase>(),
//     ),
//   );
// }
