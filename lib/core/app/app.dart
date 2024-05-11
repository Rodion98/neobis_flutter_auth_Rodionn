import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/router/router.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/injection/injection.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ValidationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthorizationBloc>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
      ),
    );
  }
}
