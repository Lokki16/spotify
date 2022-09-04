import 'package:spotify/presentation/template/template.dart';

class ButtonWithIcon extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onTap;

  const ButtonWithIcon({
    Key? key,
    required this.text,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        CustomText(
          text: text,
          style: ThemeTextSemibold.s12,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
