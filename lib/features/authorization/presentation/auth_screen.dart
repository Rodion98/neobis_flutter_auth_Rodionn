import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/router/router.dart';
import 'package:neobis_flutter_auth/core/app/widgets/my_elevated_button.dart';
import 'package:neobis_flutter_auth/core/app/widgets/my_text_filed.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/widgets/my_text_button.dart';
import 'package:neobis_flutter_auth/gen/assets.gen.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
              left: AppProps.kPageMargin,
              right: AppProps.kPageMargin,
              top: 48,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.icons.globus.image(),
                  const SizedBox(height: 31.85),
                  Text(
                    t.welcomeBack,
                    style: AppTextStyle.mplus1p24,
                  ),
                  const SizedBox(height: 28),
                  _buildEmailField(),
                  const SizedBox(height: 14),
                  _buildPasswordField(),
                  const SizedBox(height: 28),
                  _buildEnterButton(context),
                  const SizedBox(height: 28),
                  _buildRegistrationButton(context),
                ],
              ),
            )),
      ),
    );
  }

  MyTextButtonWidget _buildRegistrationButton(BuildContext context) {
    return MyTextButtonWidget(
      onTap: () {
        AutoRouter.of(context).push(const RegistrationRoute());
      },
      text: t.noAccount,
    );
  }

  MyElevatedButtonWidget _buildEnterButton(BuildContext context) {
    return MyElevatedButtonWidget(
      onTap: () {
        AutoRouter.of(context).replace(const MainRoute());
      },
      // => showSnackBarFun(context)

      text: t.enter,
    );
  }

  MyTextFieldWidget _buildPasswordField() {
    return MyTextFieldWidget(
      onChanged: (val) {},
      controller: password,
      hintText: t.inputPassword,
      obscure: true,
    );
  }

  MyTextFieldWidget _buildEmailField() {
    return MyTextFieldWidget(
      onChanged: (val) {},
      controller: email,
      hintText: t.inputLogin,
      obscure: false,
    );
  }

  void showSnackBarFun(BuildContext context) {
    SnackBar snackBar = SnackBar(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      content: Text(
        t.error,
        style: AppTextStyle.mplus1p16.copyWith(
          color: AppColors.error,
        ),
      ),
      backgroundColor: AppColors.white,
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 120,
        left: 10,
        right: 10,
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.error,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(
          AppProps.kMediumBorderRadius,
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
