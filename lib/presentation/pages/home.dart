import 'package:spotify/presentation/template/base/template.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            SizedBox(
              height: 294.h,
              child: Row(
                children: [
                  Text('Recently played'),
                  ClickableIcon(
                    icon: SpotifyIcons.notifications,
                    onTap: () {},
                  ),
                  ClickableIcon(
                    icon: SpotifyIcons.history,
                    onTap: () {},
                  ),
                  ClickableIcon(
                    icon: SpotifyIcons.settings,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
