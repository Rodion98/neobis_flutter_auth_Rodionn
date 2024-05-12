import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/injection/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        debugShowCheckedModeBanner: false,
        routerConfig: getIt<AppRouter>().config(),
      ),
    );
  }
}
