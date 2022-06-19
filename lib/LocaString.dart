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
          'chooselang': 'Choose a Language',
          'english': 'English',
          'lao': 'Lao',
          'home': 'Home',
          'feed': 'Feed',
          'order': 'My Order'
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
          'chooselang': 'ເລືອກພາສາ',
          'english': 'ພາສາອັງກິດ',
          'lao': 'ພາສາລາວ',
          'home': 'ໜ້າຫຼັກ',
          'feed': 'ຖືກໃຈ',
          'order': 'ອໍເດີຂອງຂ້ອຍ'
        }
      };
}
