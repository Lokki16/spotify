import 'package:spotify/presentation/template/template.dart';

class DefaultBody extends StatelessWidget {
  final double paddingTop;
  final double paddingBottom;
  final double paddingLeft;
  final double paddingRight;
  final bool topSafeArea;
  final Widget child;

  const DefaultBody({
    Key? key,
    this.paddingTop = 16,
    this.paddingBottom = 16,
    this.paddingLeft = 16,
    this.paddingRight = 16,
    this.topSafeArea = true,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: topSafeArea,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: paddingTop.h,
              bottom: paddingBottom.h,
              left: paddingLeft.w,
              right: paddingRight.w,
            ),
            child: child,
          ),
        ),
      ),
      bottomNavigationBar: const _ButtomNavigationBar(),
    );
  }
}

class _ButtomNavigationBar extends StatelessWidget {
  const _ButtomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.transparent,
      child: Padding(
        padding: EdgeInsets.only(top: 7.h, bottom: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            // ClickableIconWithText(
            //   text: 'Home',
            //   icon: SpotifyIcons.history,
            //   onTap: () {},
            // ),
            // ClickableIconWithText(
            //   text: 'Search',
            //   icon: SpotifyIcons.history,
            //   onTap: () {},
            // ),
            // ClickableIconWithText(
            //   text: 'Your Library',
            //   icon: SpotifyIcons.history,
            //   onTap: () {},
            // ),
            // ClickableIconWithText(
            //   text: 'Premium',
            //   icon: SpotifyIcons.history,
            //   onTap: () {},
            // ),
            CustomText(text: 'Home', style: ThemeTextMedium.m8),
            CustomText(text: 'Search', style: ThemeTextMedium.m8),
            CustomText(text: 'Your Library', style: ThemeTextMedium.m8),
            CustomText(text: 'Premium', style: ThemeTextMedium.m8),
          ],
        ),
      ),
    );
  }
}
