// AuthStates.dart
part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {}


class PhoneRegistrationSuccess extends AuthState {
  final String message;

  const PhoneRegistrationSuccess(this.message);

  @override
  List<Object> get props => [message];
}
class OtpVerificationSuccess extends AuthState {
  final String message;

  const OtpVerificationSuccess(this.message);

  @override
  List<Object> get props => [message];
}
class RefreshTokenSuccess extends AuthState {
  final String message;

  const RefreshTokenSuccess(this.message);

  @override
  List<Object> get props => [message];
}

class ErrorAuthState extends AuthState {
  final String message;

  const ErrorAuthState(this.message);

  @override
  List<Object> get props => [message];
}
