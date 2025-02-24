import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  var username = ''.obs;
  final storage = GetStorage();

  void setUsername(String name) {
    username.value = name;
  }

  void clearUsername() {
    username.value = '';
  }

  void loadUsername() {
    username.value = storage.read('username') ?? '';
    print("Username yang dimuat: ${username.value}");
  }

  void saveUsername(String name) {
    username.value = name;
    storage.write('username', name);
  }




  @override
  void onInit() {
    super.onInit();
    loadUsername();
  }
}
