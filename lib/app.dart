import 'package:spotify/presentation/template/template.dart';

class Spotify extends StatelessWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale locale = Locales().enLocale;

    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: Constants.isDebugMode,
        title: Constants.appTitle,
        themeMode: ThemeMode.dark,
        darkTheme: SpotifyTheme.darkAndroidSpotifyTheme,
        locale: locale,
        translations: GetLocalization(),
        home: const Home(),
      ),
    );
  }
}
