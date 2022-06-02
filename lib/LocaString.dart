import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Language Translate',
          'hello': 'Hello',
          'message': 'Welcome to Multi Language',
          'changelang': 'Language',
        },
        'lao': {
          'title': 'ແປພາສາ',
          'hello': 'ສະບາຍດີ',
          'message': 'ຍີນດີຕ້ອນຮັບ',
          'changelang': 'ແປພາສາ',
        }
      };
}
