import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/widgets/my_password_text_field.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/widgets/validation_string_widget.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

class PasswordValidationWidget extends StatelessWidget {
  final ValidationModel? validationModel;
  final TextEditingController password;

  const PasswordValidationWidget({
    super.key,
    this.validationModel,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyPasswordTextFieldWidget(
          controller: password,
          hintText: t.createPassword,
          obscure: true,
          onChanged: (value) {
            // print(validationModel?.lenght);
            // print(validationModel?.number);
            // print(validationModel?.specChar);
            print(value);

            context.read<ValidationBloc>().add(ValidationPassword(password: value));
          },
        ),
        const SizedBox(height: 6),
        ValidationStringWidget(
          validationModel: validationModel,
        )
      ],
    );
  }
}
