import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Welcome',
          'hello': 'Hello',
          'message': 'Welcome to Multi Language',
          'changelang': 'Language',
          'profile': 'Profile',
          'signout': 'Exit',
          'about': 'About Us',
          'setting': 'Setting',
          'chooselang': 'Choose a Language'
        },
        'lao': {
          'title': 'ຍີນດີຕ້ອນຮັບ',
          'hello': 'ສະບາຍດີ',
          'message': 'ຍີນດີຕ້ອນຮັບ',
          'changelang': 'ເລືອກພາສາ',
          'profile': 'ໂປລຟາຍ',
          'signout': 'ອອກຈາກລະບົບ',
          'about': 'ກ່ຽວກັບພວກເຮົາ',
          'setting': 'ຕັ້ງຄ່າ',
          'chooselang': 'ເລືອກພາສາ'
        }
      };
}
