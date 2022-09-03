import 'package:spotify/presentation/template/base/template.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listOfArtistsAndAlbums = List<Map<String, dynamic>>.filled(10, {
      'name': 'Dance Gavin Dance',
      'image': 'assets/img/artist.png',
      'onTap': () {},
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.h),
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
                ListOfArtistsAndAlbums(
                  title: 'Recently played',
                  artistsAndAlbums: listOfArtistsAndAlbums,
                )
              ],
            ),
          ),
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
          style: ThemeTextSemibold.graphik20,
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

class ListOfArtistsAndAlbums extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> artistsAndAlbums;

  const ListOfArtistsAndAlbums({
    Key? key,
    required this.title,
    required this.artistsAndAlbums,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      space: 16,
      children: [
        Text(
          title,
          style: ThemeTextSemibold.graphik20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SpacedRow(
            space: 16,
            children: [
              for (var image in artistsAndAlbums)
                ButtonWithIcon(
                  name: image['name'],
                  image: image['image'],
                  onTap: image['onTap'],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
