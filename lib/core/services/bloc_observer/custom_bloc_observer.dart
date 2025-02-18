import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;

class CustomBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      developer.log('Bloc Event: ${bloc.runtimeType}, Event: $event');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      developer.log('Bloc Change: ${bloc.runtimeType}, Change: $change');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      developer
          .log('Bloc Transition: ${bloc.runtimeType}, Transition: $transition');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      developer.log('Bloc Error: ${bloc.runtimeType}, Error: $error');
    }
  }
}
