import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Language Translate',
          'hello': 'Hello',
          'message': 'Welcome to Multi Language',
          'changelang': 'Language',
          'profile': 'Profile',
          'signout': 'Exit',
          'about': 'About',
          'setting': 'Setting',
          'chooselang': 'Choose a Language'
        },
        'lao': {
          'title': 'ແປພາສາ',
          'hello': 'ສະບາຍດີ',
          'message': 'ຍີນດີຕ້ອນຮັບ',
          'changelang': 'ເລືອກພາສາ',
          'profile': 'ໂປລຟາຍ',
          'signout': 'ອອກຈາກລະບົບ',
          'about': 'ກ່ຽວກັບ',
          'setting': 'ຕັ້ງຄ່າ',
          'chooselang': 'ເລືອກພາສາ'
        }
      };
}
