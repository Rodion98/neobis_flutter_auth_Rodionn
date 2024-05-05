import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';

class MyElevatedButtonWidget extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final bool active;

  const MyElevatedButtonWidget({super.key, required this.onTap, required this.text, required this.active});

  @override
  State<MyElevatedButtonWidget> createState() => _MyElevatedButtonWidgetState();
}

class _MyElevatedButtonWidgetState extends State<MyElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(widget.active ? AppColors.buttonColorDark : AppColors.buttonColorLight),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
            ),
          ),
          minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, 50))),
      onPressed: widget.active ? widget.onTap : () {},
      child: Text(
        widget.text,
        style:
            AppTextStyle.mplus1p16.copyWith(color: widget.active ? AppColors.greyExtraLight : AppColors.greyMediumDark),
      ),
    );
  }
}
