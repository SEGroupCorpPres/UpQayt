// PhoneNumberInput widgeti
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/domain/entities/auth_model.dart';
import 'package:upqayt/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:upqayt/features/presentation/controllers/app_animation_controller.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';
import 'package:upqayt/features/presentation/manager/notification.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> with SingleTickerProviderStateMixin {
  final HomeController homeController = Get.find<HomeController>();
  final AppAnimationController controller = Get.put(AppAnimationController());
  final TextEditingController _phoneController = TextEditingController(text: '+99899');
  final GlobalKey<_LoginWidgetState> _key = GlobalKey();
  final FocusNode _phoneFocusNode = FocusNode();
  late final AnimationController _loginController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  late Auth loginModel;
  late String userToken = '';
  late String phoneToken = '';
  late bool auth = false;
  late Animation<double> _loginAnimation;

  late String device;

  @override
  void initState() {
    super.initState();
    _checkAuth();
    if (!auth || homeController.isPhoneFocus.value == true) {
      _initializeAuthFocus();
      _initializeDeviceInfo();
      _getPhoneToken();
    } else {
      if (_loginController.isCompleted) {
        _loginController.reverse();
      }
    }
  }

  void _checkAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = prefs.getString('userToken') ?? '';
    if (userToken.isEmpty) {
      auth = false;
    }
  }

  void _initialize() {}

  void _getPhoneToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    phoneToken = prefs.getString('phoneToken') ?? '';
  }

  void _initializeAnimations(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bottom = mediaQuery.viewInsets.bottom;

    // Animatsiyalarni yarating
    _loginAnimation = Tween<double>(
      begin: -350,
      end: bottom,
    ).animate(_loginController);
    // Animatsiya tinglovchisini qo'shing
    _loginAnimation.addListener(() {
      controller.updatePosition(_loginAnimation.value);
    });
  }

  void _initializeDeviceInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      device = '${iosInfo.name} ${iosInfo.model}';
    } else if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      device = '${androidInfo.brand.toUpperCase()} ${androidInfo.model}';
    }
  }

  @override
  void dispose() {
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
          (value) => _phoneFocusNode.requestFocus(),
        );
  }

  @override
  Widget build(BuildContext context) {
    _initializeAnimations(context);

    return AnimatedPositioned(
      bottom: _loginAnimation.value,
      left: 0,
      right: 0,
      duration: Duration(milliseconds: 500),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 20.h),
        child: Column(
          children: [
            _buildLoginHeader(context),
            _buildPhoneNumberField(context),
            _buildSendButton(context),
            NotificationManager(),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Material(
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  homeController.changeLoginFocusToFalse();
                  _phoneFocusNode.unfocus();
                  if (_loginController.isCompleted) {
                    _loginController.reverse();
                  }
                },
                child: Icon(
                  Icons.adaptive.arrow_back,
                  size: 15.sp,
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              'Keyinroq',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          'Telefon raqamingizni kiriting',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 5.h),
        Text(
          'va tasdiqlash codini kiriting',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildPhoneNumberField(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      borderOnForeground: false,
      surfaceTintColor: Colors.transparent,
      child: SizedBox(
        height: 60.h,
        child: SearchField(
          autofocus: true,
          focusNode: _phoneFocusNode,
          keyboardType: TextInputType.phone,
          margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
          hintText: '',
          width: MediaQuery.of(context).size.width,
          onChanged: (value) {
            homeController.phoneNumberLength.value = value;
            print(homeController.phoneNumberLength.value);
          },
          hintStyle: TextStyle(),
          controller: _phoneController,
          bgColor: Colors.blueGrey.shade50,
          size: size,
          onTapOutside: (PointerDownEvent value) {
            homeController.changeLoginFocusToFalse();
          },
        ),
      ),
    );
  }

  Widget _buildSendButton(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Obx(
          () => MainButton(
            title: 'Yuborish',
            onTap: () async {
              _phoneFocusNode.unfocus();
              if (_loginController.isCompleted) {
                _loginController.reverse();
              }
              homeController.changeLoginFocusToFalse();
              homeController.changeRequestVerifyToTrue();
              homeController.changeIsAuthToTrue();
              loginModel = Auth(
                phoneNumber: _phoneController.text,
                deviceName: device,
                deviceToken: phoneToken,
              );

              BlocProvider.of<AuthBloc>(context).add(
                RegisterDevice(
                  loginModel,
                ),
              );
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setString('phoneNumber', loginModel.phoneNumber);
            },
            titleColor: homeController.phoneNumberLength.value.length == 13 ? Colors.white : AppColors.mainColor, // Bu yerda
            color: AppColors.mainColor.withOpacity(homeController.phoneNumberLength.value.length == 13 ? 1 : .1),
          ),
        ),
      ),
    );
  }
}
