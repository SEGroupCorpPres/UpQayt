import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upqayt/features/domain/entities/auth_model.dart';
import 'package:upqayt/features/domain/entities/otp_verify_model.dart';
import 'package:upqayt/features/domain/entities/refresh_token_model.dart';
import 'package:upqayt/features/domain/services/api_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiService apiService;

  AuthBloc(this.apiService) : super(Loading()) {
    on<RegisterDevice>(_onRegisterDevice);
    on<VerifyOtp>(_onVerifyOtp);
    on<RefreshTokenEvent>(_onRefreshToken);
  }

  Future<void> _onRegisterDevice(RegisterDevice event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await apiService.registerDevice(event.deviceRegistration);
      emit(Success('Устройство зарегистрировано'));
    } catch (error) {
      emit(ErrorAuthState('Ошибка регистрации устройства'));
    }
  }

  Future<void> _onVerifyOtp(VerifyOtp event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await apiService.verifyOtp(event.otpVerification);
      emit(Success('Код OTP успешно проверен'));
    } catch (error) {
      emit(ErrorAuthState('Ошибка проверки OTP'));
    }
  }

  Future<void> _onRefreshToken(RefreshTokenEvent event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await apiService.refreshToken(event.refreshToken);
      emit(Success('Токен успешно обновлен'));
    } catch (error) {
      emit(ErrorAuthState('Ошибка обновления токена'));
    }
  }
}
