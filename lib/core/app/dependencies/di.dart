// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';

// import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/data_source/retrofit.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/mapper/results_,mapper.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/repository/character_repo.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/useCase/character_use_case.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/bloc/character_bloc.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/data/mapper/episodes_mapper.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/data/repository/episode_repository.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/useCase/episode_use_case.dart';
// import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/presentation/bloc/episode_bloc.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// final getIt = GetIt.instance;

// Dio buildDioClient() {
//   final dio = Dio();
//   dio.interceptors.add(
//     PrettyDioLogger(),
//   );
//   return dio;
// }

// void setupDependencies() {
//   final dio = buildDioClient();
//   getIt.registerSingleton<Dio>(
//     Dio(),
//   );
//   getIt.registerSingleton<CharactersApi>(
//     CharactersApi(dio),
//   );
//   getIt.registerSingleton<CharacterMapper>(
//     CharacterMapper(),
//   );
//   getIt.registerSingleton<EpisodeMapper>(
//     EpisodeMapper(),
//   );
//   getIt.registerSingleton<CharacterRepoImpl>(
//     CharacterRepoImpl(
//       api: getIt<CharactersApi>(),
//       mapper: getIt<CharacterMapper>(),
//     ),
//   );
//   getIt.registerSingleton<EpisodeRepoImpl>(
//     EpisodeRepoImpl(
//       api: getIt<CharactersApi>(),
//       mapper: getIt<EpisodeMapper>(),
//     ),
//   );
//   getIt.registerSingleton<CharacterUseCase>(
//     CharacterUseCase(
//       repo: getIt<CharacterRepoImpl>(),
//     ),
//   );
//   getIt.registerSingleton<EpisodeUseCase>(
//     EpisodeUseCase(
//       repo: getIt<EpisodeRepoImpl>(),
//     ),
//   );
//   getIt.registerSingleton<CharacterBloc>(
//     CharacterBloc(
//       characterUseCase: getIt<CharacterUseCase>(),
//     ),
//   );
//   getIt.registerSingleton<EpisodeBloc>(
//     EpisodeBloc(
//       episodeUseCase: getIt<EpisodeUseCase>(),
//     ),
//   );
// }
