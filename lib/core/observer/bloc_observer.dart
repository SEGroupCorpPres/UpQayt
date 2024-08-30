import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print('bloc--> $bloc; event--> $event ');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print('bloc--> $bloc; transition--> $transition');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    super.onChange(bloc, change);
    if (kDebugMode) {
      print('bloc--> $bloc; change--> $change');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      print('bloc--> $bloc; error--> $error; stackTrace--> $stackTrace');
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    super.onCreate(bloc);
    if (kDebugMode) {
      print('create bloc--> $bloc');
    }
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    super.onClose(bloc);

    if (kDebugMode) {
      print('close bloc--> $bloc');
    }
  }
}
