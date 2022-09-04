import 'package:spotify/presentation/template/template.dart';

class CustomIcon extends StatelessWidget {
  final String icon;
  final double height;
  final VoidCallback onTap;

  const CustomIcon({
    Key? key,
    required this.icon,
    this.height = 24,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        color: ThemeColors.white,
        height: height.h,
      ),
    );
  }
}
