import 'package:get/get.dart';

// HomePage uchun State boshqaruvini `GetX` yordamida tashkil qiluvchi controller
class HomeController extends GetxController {
  var phoneNumberLength = ''.obs; // `phoneNumberLength` uchun `RxString`
  var otpLength = ''.obs; // `otpLength` uchun `RxString`
  var isPhoneFocus = false.obs; // `isPhoneFocus` uchun `RxBool`
  var isVerifyPhoneFocus = false.obs; // `isVerifyPhoneFocus` uchun `RxBool`
  var isRequestVerify = false.obs; // `isRequestVerify` uchun `RxBool`
  var isAuth = false.obs; // `isAuth` uchun `RxBool`

  void changeLoginFocusToTrue() {
    isPhoneFocus = true.obs;
    update();
  }

  void changeLoginFocusToFalse() {
    isPhoneFocus = false.obs;
    update();
  }

  void changeRequestVerifyToTrue() {
    isRequestVerify = true.obs;
    update();
  }

  void changeRequestVerifyToFalse() {
    isRequestVerify = false.obs;
    update();
  }

  void changeIsAuthToTrue() {
    isAuth = true.obs;
    update();
  }

  void changeIsAuthToFalse() {
    isAuth = false.obs;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
