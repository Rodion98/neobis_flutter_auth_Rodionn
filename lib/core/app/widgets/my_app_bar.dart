part of io_ui;

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key})
      : preferredSize = const Size.fromHeight(
          kToolbarHeight,
        ),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(
    BuildContext context,
  ) {
    return AppBar(
      centerTitle: true,
      title: Text(
        t.registration,
        style: AppTextStyle.mplus1p16.copyWith(
          color: AppColors.buttonColorDark,
        ),
      ),
    );
  }
}
