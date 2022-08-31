import 'package:spotify/presentation/template/base/template.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: 56.h, bottom: 16.h, left: 16.w, right: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recently played',
                  style: ThemeTextGraphik.graphik20,
                ),
                Row(
                  children: [
                    ClickableIcon(
                      icon: SpotifyIcons.notifications,
                      onTap: () {},
                    ),
                    SizedBox(width: 20.w),
                    ClickableIcon(
                      icon: SpotifyIcons.history,
                      onTap: () {},
                    ),
                    SizedBox(width: 20.w),
                    ClickableIcon(
                      icon: SpotifyIcons.settings,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
