part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String phoneNumber;
  final String deviceName;
  final String deviceToken;

  const LoginEvent(this.phoneNumber, this.deviceName, this.deviceToken);

  @override
  List<Object?> get props => [phoneNumber, deviceName, deviceToken];
}

class VerifyEvent extends AuthEvent {
  final String phoneNumber;
  final String verificationCode;

  const VerifyEvent(this.phoneNumber, this.verificationCode);

  @override
  List<Object?> get props => [phoneNumber, verificationCode];
}
