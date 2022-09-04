import 'package:spotify/presentation/template/template.dart';

class SpotifyTheme {
  static ThemeData get darkAndroidSpotifyTheme => ThemeData(
        platform: TargetPlatform.android,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ThemeColors.black2,
      );
}
