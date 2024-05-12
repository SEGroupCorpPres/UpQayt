// AuthStates.dart
part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class Loading extends AuthState {}

class Success extends AuthState {
  final String message;

  const Success(this.message);

  @override
  List<Object> get props => [message];
}

class ErrorAuthState extends AuthState {
  final String message;

  const ErrorAuthState(this.message);

  @override
  List<Object> get props => [message];
}
