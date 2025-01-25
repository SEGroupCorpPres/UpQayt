// AuthEvents.dart
part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}
class RegisterDevice extends AuthEvent {
  final AuthModel deviceRegistration;

  const RegisterDevice(this.deviceRegistration);

  @override
  List<Object> get props => [deviceRegistration];
}

class VerifyOtp extends AuthEvent {
  final OtpVerificationModel otpVerification;

  const VerifyOtp(this.otpVerification);

  @override
  List<Object> get props => [otpVerification];
}

class RefreshTokenEvent extends AuthEvent {
  final RefreshTokenModel refreshToken;

  const RefreshTokenEvent(this.refreshToken);

  @override
  List<Object> get props => [refreshToken];
}
