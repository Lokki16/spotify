import 'package:spotify/presentation/template/base/template.dart';

class Spotify extends StatelessWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spotify',
        darkTheme: SpotifyTheme.darkAndroidSpotifyTheme,
        themeMode: ThemeMode.dark,
        home: const Home(),
      ),
    );
  }
}
