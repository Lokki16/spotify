import 'package:spotify/presentation/template/template.dart';

class ThemeTextSemibold {
  static const fontWeight = FontWeight.w600;
  static const fontFamily = "GraphikSemibold";

  static const s12 = TextStyle(
    color: ThemeColors.white,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 12.0,
  );

  static const s20 = TextStyle(
    color: ThemeColors.white,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 20.0,
  );
}

class ThemeTextMedium {
  static const fontWeight = FontWeight.w500;
  static const fontFamily = "GraphikMedium";

  static const m8 = TextStyle(
    color: ThemeColors.white,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 8.0,
  );
}
