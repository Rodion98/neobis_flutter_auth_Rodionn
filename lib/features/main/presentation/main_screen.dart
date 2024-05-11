import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/router/router.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            t.welcomeBackOnRussian,
            style: AppTextStyle.mplus1p24.copyWith(height: 1.45),
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
              AutoRouter.of(context).replace(const AuthorizationRoute());
            },
            text: t.exit,
          )
        ],
      ),
    );
  }
}
