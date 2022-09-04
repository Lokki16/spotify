import 'package:spotify/presentation/template/template.dart';

class GetLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_EN': EnglishLocale.en,
        'ru_RU': RussianLocale.ru,
      };
}

class Locales {
  Locale get enLocale => const Locale('en');
  Locale get ruLocale => const Locale('ru');
}
