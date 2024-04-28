import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upqayt/features/domain/entities/auth_model.dart';
import 'package:upqayt/features/domain/services/auth_api.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiService apiService;

  AuthBloc(this.apiService) : super(const InitialState());

  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginEvent) {
      yield const LoadingState();
      try {
        // Telefon raqamini yuborish orqali foydalanuvchini autentifikatsiya qilish
        await apiService.sendVerificationCode(
          event.phoneNumber,
          event.deviceName,
          event.deviceToken,
        );
        yield const SuccessState(); // Kod muvaffaqiyatli yuborilgan
      } catch (e) {
        yield FailureState(e.toString());
      }
    } else if (event is VerifyEvent) {
      yield const LoadingState();
      try {
        // Telefon raqamini tasdiqlash
        final authModel = await apiService.verifyPhoneNumber(
          event.phoneNumber,
          event.verificationCode,
        );
        yield SuccessState(authModel: authModel);
      } catch (e) {
        yield FailureState(e.toString());
      }
    }
  }
}
