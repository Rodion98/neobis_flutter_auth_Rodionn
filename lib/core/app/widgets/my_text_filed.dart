import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';

class MyTextFieldWidget extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController controller;
  bool obscure;
  final String? error;
  Function(String)? onChanged;

  MyTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscure,
    this.error,
    this.validator,
    this.onChanged,
  });

//   @override
//   State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
// }

// class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
          borderSide: BorderSide.none,
        ),
        errorStyle: AppTextStyle.mplus1p14.copyWith(color: AppColors.error),
        fillColor: AppColors.greyExtraLight,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
        errorText: error,
        hintText: hintText,
        hintStyle: AppTextStyle.mplus1p16,
        suffixIcon: obscure
            ? IconButton(
                icon: Icon(
                  obscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // setState(() {
                  //   widget.obscure = !widget.obscure;
                  // });
                },
              )
            : IconButton(
                icon: Icon(
                  obscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // setState(() {
                  //   widget.obscure = !widget.obscure;
                  // });
                },
              ),
      ),
      validator: validator,
      controller: controller,
      obscureText: obscure,
      obscuringCharacter: '*',
    );
  }
}
