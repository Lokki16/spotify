import 'package:spotify/presentation/template/base/template.dart';

class ClickableIcon extends StatelessWidget {
  final IconData icon;
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
      child: Icon(icon, size: 24.h),
    );
  }
}
