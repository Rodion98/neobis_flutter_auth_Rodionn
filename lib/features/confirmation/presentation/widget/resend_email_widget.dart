import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

class ResendEmailWidget extends StatelessWidget {
  final String email;
  final RegistrationModel registrationModel;
  const ResendEmailWidget({
    super.key,
    required this.email,
    required this.registrationModel,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextButton(
      onPressed: () {
        context.read<ValidationBloc>().add(
              RegistrationEvent(
                registrationModel: registrationModel,
              ),
            );
        _buildShowDialog(context);
      },
      child: Text(
        t.emailNotCome,
        style: AppTextStyle.mplus1p16.copyWith(
          color: AppColors.buttonColorDark,
        ),
      ),
    );
  }

  Future<String?> _buildShowDialog(
    BuildContext context,
  ) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              t.resendEmail,
              style: AppTextStyle.mplus1p20.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
        content: Text(
          textAlign: TextAlign.center,
          t.spam2,
          style: AppTextStyle.mplus1p16,
        ),
        actions: <Widget>[
          MyElevatedButtonWidget(
            text: t.understand,
            onTap: () {
              AutoRouter.of(context).replace(
                const AuthorizationRoute(),
              );
            },
          )
        ],
      ),
    );
  }
}
