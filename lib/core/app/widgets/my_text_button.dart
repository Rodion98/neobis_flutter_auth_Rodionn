part of io_ui;

class MyTextButtonWidget extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const MyTextButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  State<MyTextButtonWidget> createState() => _MyTextButtonWidgetState();
}

class _MyTextButtonWidgetState extends State<MyTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
      ),
      child: Text(
        widget.text,
        style: AppTextStyle.mplus1p16.copyWith(
          color: AppColors.buttonColorDark,
        ),
      ),
    );
  }
}
