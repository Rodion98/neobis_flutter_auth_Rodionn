part of io_ui;

class MyTextFieldWidget extends StatefulWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController controller;
  final bool obscure;
  final String? error;
  final Function(String)? onChanged;
  final IconButton? suffixIcon;

  const MyTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscure = false,
    this.error,
    this.validator,
    this.onChanged,
    this.suffixIcon,
  });

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppProps.kMediumBorderRadius,
          ),
          borderSide: BorderSide.none,
        ),
        errorStyle: AppTextStyle.mplus1p14.copyWith(
          color: AppColors.error,
        ),
        fillColor: AppColors.greyExtraLight,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppProps.kMediumBorderRadius,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppProps.kPageMargin,
        ),
        errorText: widget.error,
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
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.obscure ? _obscureText : false,
      obscuringCharacter: '*',
    );
  }
}
