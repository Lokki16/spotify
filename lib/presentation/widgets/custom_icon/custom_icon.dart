import 'package:spotify/presentation/template/template.dart';

class CustomIcon extends StatelessWidget {
  final SpotifyIcons icon;
  final Color? color;
  final double size;
  final bool useDefaultColor;
  final VoidCallback onTap;

  const CustomIcon({
    super.key,
    required this.icon,
    this.color = ThemeColors.white,
    this.size = 24,
    this.useDefaultColor = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        'assets/icons/${icon.name}.svg',
        color: color,
        width: size.w,
        height: size.h,
        alignment: Alignment.center,
      ),
    );
  }
}
