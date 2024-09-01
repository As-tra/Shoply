import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoply/core/utils/service_locator.dart';

class SharedPrefrenceHelper {
  static String userStateKey = 'USERSTATE';

  Future<bool> saveUserState() async =>
      getIt<SharedPreferences>().setBool(userStateKey, true);

  bool? getUserState() => getIt<SharedPreferences>().getBool(userStateKey);
}
