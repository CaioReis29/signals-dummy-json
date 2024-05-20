
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  SharedPreferences prefs;

  SharedPreferenceService(this.prefs);

  final String _isFavourite = "is_favourite";

  void setIsFavourite(bool isFavourite) => prefs.setBool(_isFavourite, isFavourite);

  bool getIsFavourite() => prefs.getBool(_isFavourite) ?? false;
}