import 'package:spotify/presentation/template/base/template.dart';

class ClickableIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const ClickableIcon({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        color: ThemeColors.white,
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}
