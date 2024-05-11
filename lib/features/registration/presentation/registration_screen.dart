import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/router/router.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/widgets/password_validation_widget.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final login = TextEditingController();
  final repeatPassword = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    login.dispose();
    password.dispose();
    repeatPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppProps.kPageMargin,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                ),
                child: Center(
                  child: Text(
                    t.createAccount,
                    style: AppTextStyle.mplus1p24,
                  ),
                ),
              ),
              _buildEmailTextField(context),
              const SizedBox(height: 14),
              _buildLoginTextField(context),
              const SizedBox(height: 14),
              _buildPasswordField(context),
              const SizedBox(height: 14),
              _buildRepeatPasswordField(),
              const SizedBox(height: 24),
              _buildButton()
            ]),
          ),
        ),
      ),
    );
  }

  BlocBuilder<ValidationBloc, ValidationState> _buildButton() {
    return BlocBuilder<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return state.validationModel.isButtonAvailable
            ? MyElevatedButtonWidget(
                text: t.continueText,
                onTap: () {
                  final registrationModel = RegistrationModel(
                    username: state.validationModel.loginString,
                    email: state.validationModel.emailString,
                    password: state.validationModel.password,
                    passwordConfirm: state.validationModel.passwordRepeat,
                  );

                  context.read<ValidationBloc>().add(
                        RegistrationEvent(
                          registrationModel: registrationModel,
                        ),
                      );
                  AutoRouter.of(context).replace(
                    ConfirmationRoute(
                      email: state.validationModel.emailString,
                      registrationModel: registrationModel,
                    ),
                  );
                },
              )
            : MyElevatedButtonWidget(
                text: t.continueText,
              );
      },
    );
  }

  Column _buildPasswordField(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<ValidationBloc, ValidationState>(
          builder: (context, state) {
            state is Validation;
            final validationModel = state.validationModel;
            return PasswordValidationWidget(
              validationModel: validationModel,
              password: password,
            );
          },
        ),
      ],
    );
  }

  MyTextFieldWidget _buildRepeatPasswordField() {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<ValidationBloc>().add(
              ValidationPasswordRepeat(
                passwordRepeat: value,
              ),
            );
      },
      hintText: t.repeatPassword,
      controller: repeatPassword,
      obscure: true,
      validator: (value) {
        if (value == password.text) {
          return null;
        } else {
          return t.passwordNotSimilar;
        }
      },
    );
  }

  MyTextFieldWidget _buildLoginTextField(
    BuildContext context,
  ) {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<ValidationBloc>().add(
              ValidationLogin(
                login: value,
              ),
            );
      },
      hintText: t.createLogin,
      controller: login,
      obscure: false,
    );
  }

  MyTextFieldWidget _buildEmailTextField(
    BuildContext context,
  ) {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<ValidationBloc>().add(
              ValidationEmail(
                email: value,
              ),
            );
      },
      hintText: t.inputEmail,
      controller: email,
      obscure: false,
    );
  }
}
