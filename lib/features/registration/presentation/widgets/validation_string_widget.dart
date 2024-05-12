import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/bloc/validation_bloc.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

class ValidationStringWidget extends StatelessWidget {
  final ValidationModel? validationModel;

  const ValidationStringWidget({
    Key? key,
    this.validationModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildString(
            t.symbols,
            validationModel?.lenght,
          ),
          _buildString(
            t.letter,
            validationModel?.upperCase,
          ),
          _buildString(
            t.number,
            validationModel?.number,
          ),
          _buildString(
            t.specSymbol,
            validationModel?.specChar,
          )
        ],
      ),
    );
  }

  Text _buildString(String text, bool? boolean) {
    return Text(
      boolean == null ? text : (boolean == false ? '$text ❌' : '$text ✅'),
      style: TextStyle(
          color: boolean == null ? AppColors.greyMediumDark : (boolean == false ? AppColors.error : AppColors.green),
          fontSize: 14.0),
    );
  }
}
