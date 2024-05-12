import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/widgets/topSnackBar/custom_snack_bar.dart';
import 'package:neobis_flutter_auth/core/app/widgets/topSnackBar/top_snack_bar.dart';
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_auth/gen/assets.gen.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({
    super.key,
  });

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final login = TextEditingController();
  final password = TextEditingController();
  bool isObcsure = true;

  @override
  void dispose() {
    login.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<AuthorizationBloc, AuthorizationState>(
        listener: _listenerBloc,
        child: SafeArea(
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
                    _buildPasswordField(
                      isObcsure,
                    ),
                    const SizedBox(height: 28),
                    _buildEnterButton(
                      context,
                    ),
                    const SizedBox(height: 28),
                    _buildRegistrationButton(
                      context,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void _listenerBloc(
    BuildContext context,
    AuthorizationState state,
  ) {
    state.stateStatus.whenOrNull(
      success: (val) => AutoRouter.of(context).replace(
        const MainRoute(),
      ),
      failure: (msg) {
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: t.error,
          ),
          dismissType: DismissType.onSwipe,
          dismissDirection: [DismissDirection.up],
        );
      },
    );
  }

  MyTextButtonWidget _buildRegistrationButton(
    BuildContext context,
  ) {
    return MyTextButtonWidget(
      onTap: () {
        AutoRouter.of(context).push(
          const RegistrationRoute(),
        );
      },
      text: t.noAccount,
    );
  }

  MyElevatedButtonWidget _buildEnterButton(
    BuildContext context,
  ) {
    return MyElevatedButtonWidget(
      onTap: () {
        final String enteredPassword = password.text;
        final String enteredUsername = login.text;
        context.read<AuthorizationBloc>().add(
              AuthorizationEvent.login(
                password: enteredPassword,
                login: enteredUsername,
              ),
            );
      },
      text: t.enter,
    );
  }

  MyTextFieldWidget _buildPasswordField(
    bool isObcsure,
  ) {
    return MyTextFieldWidget(
      onChanged: (val) {},
      controller: password,
      hintText: t.inputPassword,
      obscure: isObcsure,
      suffixIcon: _buildSuffixIcon,
    );
  }

  MyTextFieldWidget _buildEmailField() {
    return MyTextFieldWidget(
      onChanged: (val) {},
      controller: login,
      hintText: t.inputLogin,
      obscure: false,
    );
  }

  IconButton get _buildSuffixIcon {
    return IconButton(
      icon: Icon(
        !isObcsure ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
        color: AppColors.greyExtraDark,
      ),
      onPressed: () {
        setState(() {
          isObcsure = !isObcsure;
        });
      },
    );
  }
}
