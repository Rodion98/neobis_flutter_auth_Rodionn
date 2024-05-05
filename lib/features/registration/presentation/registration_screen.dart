import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/app/router/router.dart';
import 'package:neobis_flutter_auth/core/app/widgets/my_elevated_button.dart';
import 'package:neobis_flutter_auth/core/app/widgets/my_text_filed.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/widgets/my_password_text_field.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/widgets/validation_string_widget.dart';
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
  final login = TextEditingController();
  final password = TextEditingController();
  final repeatPassword = TextEditingController();
  var activeButton = false;

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
      appBar: AppBar(
        title: Center(
          child: Text(
            t.registration,
            style: AppTextStyle.mplus1p16.copyWith(color: AppColors.buttonColorDark),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Center(
                  child: Text(
                    t.createAccount,
                    style: AppTextStyle.mplus1p24,
                  ),
                ),
              ),
              _buildEmailTextField(),
              const SizedBox(height: 14),
              _buildLoginTextField(),
              const SizedBox(height: 14),
              _buildPassworField(context),
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

  Column _buildPassworField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyPasswordTextFieldWidget(
            hintText: t.createPassword,
            controller: password,
            obscure: true,
            onChanged: (value) {
              context.read<ValidationBloc>().add(ValidationEvent.checkPassword(password: value, formKey: _formKey));
            }),
        const SizedBox(height: 6),
        BlocBuilder<ValidationBloc, ValidationState>(builder: (context, state) {
          return state.when(loading: () {
            return const ValidationStringWidget();
          }, validationPassword: (validation, _) {
            return ValidationStringWidget(
              length: validation[0],
              number: validation[1],
              specChar: validation[2],
              upperCase: validation[3],
            );
          });
        }),
      ],
    );
  }

  BlocBuilder<ValidationBloc, ValidationState> _buildButton() {
    return BlocBuilder<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return state.when(loading: () {
          return MyElevatedButtonWidget(
            onTap: () {},
            text: t.continueText,
            active: false,
          );
        }, validationPassword: (_, buttonStatus) {
          return MyElevatedButtonWidget(
            onTap: () {
              AutoRouter.of(context).push(const MainRoute());
            },
            text: t.continueText,
            active: activeButton,
          );
        });
      },
    );
  }

  void isValidationEdit() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        activeButton = true;
      });
    }
  }

  MyTextFieldWidget _buildRepeatPasswordField() {
    return MyTextFieldWidget(
      onChanged: (value) {
        isValidationEdit();
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

  MyTextFieldWidget _buildLoginTextField() {
    return MyTextFieldWidget(
      onChanged: (value) {
        isValidationEdit();
      },
      hintText: t.createLogin,
      controller: login,
      obscure: false,
      validator: (value) {
        if (RegExp('[a-zA-Z]').hasMatch(login.text)) {
          return null;
        } else if (login.text.isEmpty) {
          return t.necessaryField;
        } else {
          return t.badSymbols;
        }
      },
    );
  }

  MyTextFieldWidget _buildEmailTextField() {
    return MyTextFieldWidget(
      onChanged: (value) {
        isValidationEdit();
      },
      hintText: t.inputEmail,
      controller: email,
      obscure: false,
      validator: (value) {
        if (value!.contains('@') && value.contains('.')) {
          return null;
        } else if (value.isEmpty) {
          return t.necessaryField;
        } else {
          return t.notCorrectEmail;
        }
      },
    );
  }
}
