import 'package:spotify/presentation/template/base/template.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: 56.h, bottom: 16.h, left: 16.w, right: 16.w),
        child: SpacedColumn(
          space: 24,
          children: [
            Greetings(
              greetings: 'Good evening',
              icons: [
                {
                  'icon': SpotifyIcons.notifications,
                  'onTap': () {},
                },
                {
                  'icon': SpotifyIcons.history,
                  'onTap': () {},
                },
                {
                  'icon': SpotifyIcons.settings,
                  'onTap': () {},
                },
              ],
            ),
            const ListOfActorsAndPlaylists(
              name: 'Recently played',
              actorsAndPlaylists: [],
            )
          ],
        ),
      ),
    );
  }
}

class Greetings extends StatelessWidget {
  final String greetings;
  final List<Map<String, dynamic>> icons;

  const Greetings({
    Key? key,
    required this.greetings,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          greetings,
          style: ThemeTextGraphik.graphik20,
        ),
        SpacedRow(
          space: 20,
          children: [
            for (var icon in icons)
              ClickableIcon(
                icon: icon['icon'],
                onTap: icon['onTap'],
              ),
          ],
        ),
      ],
    );
  }
}

class ListOfActorsAndPlaylists extends StatelessWidget {
  final String name;
  final List<Widget> actorsAndPlaylists;

  const ListOfActorsAndPlaylists({
    Key? key,
    required this.name,
    required this.actorsAndPlaylists,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      space: 16,
      children: [
        Text(
          name,
          style: ThemeTextGraphik.graphik20,
        ),
      ],
    );
  }
}
