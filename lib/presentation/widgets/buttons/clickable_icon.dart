import 'package:spotify/presentation/template/template.dart';

class ClickableIcon extends StatelessWidget {
  final SpotifyIcons icon;
  final VoidCallback onTap;

  const ClickableIcon({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: CustomIcon(icon: icon));
  }
}
