import 'package:get/get.dart';

// HomePage uchun State boshqaruvini `GetX` yordamida tashkil qiluvchi controller
class HomeController extends GetxController {
  var phoneNumberLength = ''.obs; // `phoneNumberLength` uchun `RxString`
  var otpLength = ''.obs; // `otpLength` uchun `RxString`
  var isPhoneFocus = false; // `isPhoneFocus` uchun `RxBool`
  var isVerifyPhoneFocus = false.obs; // `isVerifyPhoneFocus` uchun `RxBool`
  var isRequestVerify = false; // `isRequestVerify` uchun `RxBool`
  var isAuth = false.obs; // `isAuth` uchun `RxBool`
  var isLoginAnimationDismissed = false.obs;

  void setLoginAnimationDismissed(bool value) {
    isLoginAnimationDismissed.value = value;
  }
  void changeLoginFocusToTrue() {
    isPhoneFocus = true;
    update();
  }

  void changeLoginFocusToFalse() {
    isPhoneFocus = false;
    update();
  }

  void changeRequestVerifyToTrue() {
    isRequestVerify = true;
    update();
  }

  void changeRequestVerifyToFalse() {
    isRequestVerify = false;
    update();
  }

  void changeIsAuthToTrue() {
    isAuth.value = true;
    update();
  }

  void changeIsAuthToFalse() {
    isAuth.value = false;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
