import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_auth/gen/assets.gen.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                t.welcomeBackOnRussian,
                style: AppTextStyle.mplus1p24.copyWith(
                  height: 1.45,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                t.LorbyYourRepet,
                style: AppTextStyle.mplus1p20,
              ),
              const SizedBox(height: 48),
              Assets.icons.illustration.image(),
              const SizedBox(height: 114),
              MyTextButtonWidget(
                onTap: () {
                  context.read<AuthorizationBloc>().add(
                        const AuthorizationEvent.signOut(),
                      );
                  AutoRouter.of(context).push(
                    const AuthorizationRoute(),
                  );
                },
                text: t.exit,
              )
            ],
          ),
        ),
      ),
    );
  }
}
