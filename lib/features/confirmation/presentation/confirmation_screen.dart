import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/features/confirmation/presentation/widget/resend_email_widget.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/gen/assets.gen.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

@RoutePage()
class ConfirmationScreen extends StatelessWidget {
  final String email;
  final RegistrationModel registrationModel;
  const ConfirmationScreen({
    super.key,
    required this.email,
    required this.registrationModel,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppProps.kPageMargin,
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 36),
                  Text(
                    textAlign: TextAlign.center,
                    t.sendEmail + email,
                    style: AppTextStyle.mplus1p20.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    textAlign: TextAlign.center,
                    t.spam,
                    style: AppTextStyle.mplus1p16,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    t.owl,
                    style: AppTextStyle.mplus1p16.copyWith(
                      color: AppColors.greyExtraDark,
                    ),
                  ),
                  const SizedBox(height: 58),
                  Assets.icons.womenAtComp.image(),
                  const SizedBox(height: 58),
                  ResendEmailWidget(
                    email: email,
                    registrationModel: registrationModel,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
