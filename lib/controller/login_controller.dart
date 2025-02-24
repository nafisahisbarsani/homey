import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:homey/controller/username_controller.dart';
import '../pages/login/login_api_service.dart';
import '../pages/user_model.dart';

class LoginController extends GetxController{
  var isLoading = false.obs;
  var user = Rxn<UserModel>();

  final storage = GetStorage();

  // Fungsi login
  Future<void> login(String username, String password) async {
    isLoading.value = true;
    print("Login dengan Username: $username dan Password: $password");

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'All fields are required');
      isLoading.value = false;
      return;
    }

    try {
      final response = await LoginApiService.login(username, password);
      if (response != null && response['token'] != null) {
        user.value = UserModel.fromJson(response);
        storage.write('token', response['token']);
        storage.write('username', response['username']);
        final userController = Get.find<UserController>();
        userController.saveUsername(response['username']);
        Get.snackbar('Success', 'Login berhasil');
        Get.toNamed('/HomePage');
      } else {
        Get.snackbar(
            'Error',
            response?['message'] ??
                'Login gagal, periksa kembali username dan password');
      }
    } catch (e) {
      Get.snackbar('Error', 'Terjadi kesalahan: $e');
    } finally {
      isLoading.value = false;
    }
  }
  bool isLoggedIn() {
    return storage.hasData('token');
  }
  void logout() {
    user.value = null;
    storage.remove('token');
    Get.snackbar('Logout', 'Anda telah berhasil logout');
    Get.offAllNamed('/login');
  }
}