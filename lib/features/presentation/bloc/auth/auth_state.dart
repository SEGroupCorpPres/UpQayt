part of 'auth_bloc.dart';
abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class InitialState extends AuthState {
  const InitialState();
}

class LoadingState extends AuthState {
  const LoadingState();
}

class SuccessState extends AuthState {
  final AuthModel? authModel;

  const SuccessState({this.authModel});

  @override
  List<Object?> get props => [authModel];
}

class FailureState extends AuthState {
  final String message;

  const FailureState(this.message);

  @override
  List<Object?> get props => [message];
}