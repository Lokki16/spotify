import 'package:spotify/presentation/template/template.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listOfArtistsAndAlbums = List<Map<String, dynamic>>.filled(10, {
      'name': 'Dance Gavin Dance',
      'image': 'assets/img/artist.png',
      'onTap': () {},
    });

    return DefaultBody(
      child: SpacedColumn(
        space: 24,
        children: [
          _Greetings(
            text: ConstantText.goodEvening,
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
          _ListOfArtistsAndAlbums(
            text: ConstantText.recentlyPlayed,
            image: listOfArtistsAndAlbums,
          )
        ],
      ),
    );
  }
}

class _Greetings extends StatelessWidget {
  final String text;
  final List<Map<String, dynamic>> icons;

  const _Greetings({
    Key? key,
    required this.text,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          style: ThemeTextSemibold.s20,
        ),
        SpacedRow(
          space: 20,
          children: [
            for (var icon in icons)
              ClickableIcon(icon: icon['icon'], onTap: icon['onTap']),
          ],
        ),
      ],
    );
  }
}

class _ListOfArtistsAndAlbums extends StatelessWidget {
  final String text;
  final List<Map<String, dynamic>> image;

  const _ListOfArtistsAndAlbums({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      space: 16,
      children: [
        CustomText(
          text: text,
          style: ThemeTextSemibold.s20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SpacedRow(
            space: 16,
            children: [
              for (var image in image)
                ButtonWithIcon(
                  text: image['name'],
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
