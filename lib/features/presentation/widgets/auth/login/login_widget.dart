// import 'package:device_info_plus/device_info_plus.dart';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/remote/models/auth_model.dart';
import 'package:upqayt/features/presentation/controllers/app_animation_controller.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';
import 'package:upqayt/features/presentation/widgets/auth/login/login_header_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/login/login_phone_field_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/login/login_send_button_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/verify_phone/verify_phone_number_widget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});
  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  final HomeController homeController = Get.find<HomeController>();
  final AppAnimationController controller = Get.put(AppAnimationController());
  final TextEditingController _phoneController =
      TextEditingController(text: '+99899');
  final GlobalKey<_LoginWidgetState> _key = GlobalKey();
  final FocusNode _phoneFocusNode = FocusNode();

  late final AnimationController _loginController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );

  late AuthModel loginModel;
  late String userToken = '';
  late String phoneToken = '';
  late bool auth = false;
  late Animation<double> _loginAnimation;

  late String device;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.removeObserver(this);
    _checkAuth();
    _initializeAnimations();

    if (!auth || homeController.isPhoneFocus == true) {
      _initializeAuthFocus();
      // _initializeDeviceInfo();
      _getPhoneToken();
    } else {
      if (_loginController.isCompleted) {
        _loginController.reverse();
      }
    }
    _loginController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        homeController.changeLoginFocusToFalse();
        homeController.changeRequestVerifyToTrue();
        homeController.setLoginAnimationDismissed(true);
      }
    });
  }

  void _checkAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = prefs.getString('userToken') ?? '';
    if (userToken.isEmpty) {
      auth = false;
      Future.delayed(Duration.zero, () {
        homeController.changeLoginFocusToTrue();
      });
    }
  }

  @override
  void didChangeMetrics() {
    // TODO: implement didChangeMetrics
    super.didChangeMetrics();
    _initializeAnimations();
  }

  void _initialize() {}

  void _getPhoneToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    phoneToken = prefs.getString('phoneToken') ?? '';
  }

  void _initializeAnimations() {
    final bottomInset = WidgetsBinding
            .instance.platformDispatcher.implicitView?.viewInsets.bottom ??
        0;
    log(bottomInset.toString());
    _loginAnimation = Tween<double>(
      begin: -350,
      end: bottomInset,
    ).animate(_loginController)
      ..addListener(() {
        setState(() {
          controller.updatePosition(_loginAnimation.value);
        });
      });
  }

  // void _initializeDeviceInfo() async {
  //   final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   if (Platform.isIOS) {
  //     final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     device = '${iosInfo.name} ${iosInfo.model}';
  //   } else if (Platform.isAndroid) {
  //     final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     device = '${androidInfo.brand.toUpperCase()} ${androidInfo.model}';
  //   }
  // }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _phoneController.dispose();
    _loginController.dispose();
    _phoneFocusNode.dispose();
    super.dispose();
  }

  void _initializeAuthFocus() {
    if (!homeController.isAuth.value) {
      _startLoginAnimation();
      homeController.changeLoginFocusToTrue();
    } else {
      _phoneFocusNode.unfocus();
    }
  }

  // Tizimga kirish animatsiyasini boshlang
  void _startLoginAnimation() {
    _loginController.forward().then(
          (value) => setState(() {
            _phoneFocusNode.requestFocus();
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return AnimatedPositioned(
      bottom: _loginAnimation.value,
      left: 0,
      right: 0,
      duration: Duration(milliseconds: 200),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        padding:
            EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 20.h),
        child: Column(
          children: [
            LoginHeaderWidget(
              onTap: () {
                homeController.changeLoginFocusToFalse();
                _phoneFocusNode.unfocus();
                if (_loginController.isCompleted) {
                  _loginController.reverse();
                }
              },
            ),
            LoginPhoneFieldWidget(
              phoneFocusNode: _phoneFocusNode,
              onChanged: (value) {
                homeController.phoneNumberLength.value = value;
                log(homeController.phoneNumberLength.value);
              },
              onTapOutside: (PointerDownEvent value) {
                homeController.changeLoginFocusToFalse();
              },
              // homeController: homeController,
              phoneController: _phoneController,
              size: size,
            ),
            GetBuilder<HomeController>(
              builder: (controller) => LoginSendButtonWidget(
                onTap: () async {
                  _phoneFocusNode.unfocus();
                  if (_loginController.isCompleted) {
                    _loginController.reverse();
                  }
                  // controller.changeLoginFocusToFalse();
                  // controller.changeRequestVerifyToTrue();
                  // controller.changeIsAuthToTrue();

                  loginModel = AuthModel(
                    phoneNumber: _phoneController.text,
                    deviceName: 'device',
                    deviceToken: phoneToken,
                  );

                  // BlocProvider.of<AuthBloc>(context).add(
                  //   RegisterDevice(
                  //     loginModel,
                  //   ),
                  // );
                  // SharedPreferences prefs = await SharedPreferences.getInstance();
                  // await prefs.setString('phoneNumber', loginModel.phoneNumber);
                },
                titleColor: controller.phoneNumberLength.value.length == 13
                    ? Colors.white
                    : AppColors.mainColor,
                color: AppColors.mainColor.withOpacity(
                    controller.phoneNumberLength.value.length == 13 ? 1 : .1),
              ),
            ),
            // NotificationManager(),
          ],
        ),
      ),
    );
  }
}
