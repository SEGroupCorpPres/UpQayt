import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    super.onEvent(bloc, event);
    if (kDebugMode) {
      log('BLoC----> $bloc; \n\n Event----> $event ');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      log('BLoC----> $bloc; \n\n Transition----> $transition');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    super.onChange(bloc, change);
    if (kDebugMode) {
      log('BLoC----> $bloc; \n\n Change----> $change');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      log('BLoC----> $bloc; \n\nError----> $error; \n\n StackTrace----> $stackTrace');
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    super.onCreate(bloc);
    if (kDebugMode) {
      log('Create BloC----> $bloc');
    }
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    super.onClose(bloc);

    if (kDebugMode) {
      print('Close BLoC----> $bloc');
    }
  }
}
