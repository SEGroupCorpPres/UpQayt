import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upqayt/features/data/remote/models/auth_model.dart';
import 'package:upqayt/features/data/remote/models/otp_verify_model.dart';
import 'package:upqayt/features/data/remote/models/refresh_token_model.dart';
import 'package:upqayt/features/domain/services/api_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiService apiService;
  FlutterSecureStorage storage = FlutterSecureStorage();

  AuthBloc(this.apiService) : super(AuthLoading()) {
    on<RegisterDevice>(_onRegisterDevice);
    on<VerifyOtp>(_onVerifyOtp);
    on<RefreshTokenEvent>(_onRefreshToken);
  }

  Future<void> _onRegisterDevice(RegisterDevice event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final httpResponse = await apiService.registerDevice(event.deviceRegistration);
      final responseBody = httpResponse.response.data;
      if (httpResponse.response.statusCode == 200) {
        if (responseBody['success'] == true) {
          await saveSessionId(responseBody['data']['session_id']);
          print(responseBody);
          emit(PhoneRegistrationSuccess('Устройство зарегистрировано'));
        } else if (responseBody['error'] != null) {
          emit(ErrorAuthState('Ошибка регистрации устройства'));
        }
      }
    } catch (error) {
      print(error);
      emit(ErrorAuthState('Ошибка регистрации устройства'));
    }
  }

  Future<void> _onVerifyOtp(VerifyOtp event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final httpResponse = await apiService.verifyOtp(event.otpVerification);
      final responseBody = httpResponse.response.data;
      if (httpResponse.response.statusCode == 200) {
        if (responseBody['success'] == true) {
          await saveAccessToken(responseBody['data']['access_token']);
          await saveRefreshToken(responseBody['data']['refresh_token']);
          print(responseBody);
          emit(OtpVerificationSuccess('Код OTP успешно проверен'));
        } else if (responseBody['error'] != null) {
          print(httpResponse);
          emit(ErrorAuthState('Ошибка регистрации устройства'));
        }
      }
    } catch (error) {
      print(error);
      emit(ErrorAuthState('Ошибка проверки OTP'));
    }
  }

  Future<void> _onRefreshToken(RefreshTokenEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await apiService.refreshToken(event.refreshToken);
      emit(RefreshTokenSuccess('Токен успешно обновлен'));
    } catch (error) {
      print(error);

      emit(ErrorAuthState('Ошибка обновления токена'));
    }
  }

  Future<void> saveToken(String token) async {
    await storage.write(key: 'userToken', value: token);
  }

  Future<void> saveSessionId(int sessionId) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('sessionId', sessionId);
  }

  Future<void> saveAccessToken(String accessToken) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('accessToken', accessToken);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('refreshToken', refreshToken);
  }
}
