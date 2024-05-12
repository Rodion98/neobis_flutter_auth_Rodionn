part of io_ui;

class AppSnackBar {
  static show({
    required BuildContext context,
    required String titleText,
    Duration duration = const Duration(
      seconds: 2,
    ),
    bool error = false,
  }) {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            backgroundColor: AppColors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 15,
            ),
            elevation: 5,
            content: Text(
              t.error,
              style: AppTextStyle.mplus1p16.copyWith(
                color: AppColors.error,
              ),
            ),
            behavior: SnackBarBehavior.fixed,
            dismissDirection: DismissDirection.up,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(
                AppProps.kMediumBorderRadius,
              ),
            ),
          ),
        )
        .closed
        .then((
      SnackBarClosedReason reason,
    ) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    });
  }
}
