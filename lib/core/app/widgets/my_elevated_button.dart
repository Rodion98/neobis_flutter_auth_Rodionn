part of io_ui;

class MyElevatedButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const MyElevatedButtonWidget({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((
          states,
        ) {
          if (states.contains(
            MaterialState.disabled,
          )) {
            return AppColors.buttonColorLight;
          }
          return AppColors.buttonColorDark;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppProps.kMediumBorderRadius,
            ),
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: onTap != null ? AppColors.white : AppColors.greyMediumDark,
        ),
      ),
    );
  }
}
