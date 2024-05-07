import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';

class MyPasswordTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscure;
  final void Function(String)? onChanged;

  const MyPasswordTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscure,
    required this.onChanged,
  });

  @override
  State<MyPasswordTextFieldWidget> createState() => _MyPasswordTextFieldWidgetState();
}

class _MyPasswordTextFieldWidgetState extends State<MyPasswordTextFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
        fillColor: AppColors.greyExtraLight,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
        ),
        hintText: widget.hintText,
        hintStyle: AppTextStyle.mplus1p16,
        suffixIcon: widget.obscure
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : const SizedBox(),
      ),
      // validator: _validatePassword,
      controller: widget.controller,
      obscureText: widget.obscure ? _obscureText : false,
      obscuringCharacter: '*',
    );
  }
}
