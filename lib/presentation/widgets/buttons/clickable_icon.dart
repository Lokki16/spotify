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

class ClickableIconWithText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final SpotifyIcons icon;
  final VoidCallback onTap;

  const ClickableIconWithText({
    Key? key,
    required this.text,
    this.textStyle = ThemeTextMedium.m8,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: onTap, child: CustomIcon(icon: icon)),
        CustomText(text: text, style: textStyle),
      ],
    );
  }
}
