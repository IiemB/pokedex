import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/presentation.dart';

class PokedexBlocObserver extends BlocObserver {
  final bool onCreateLog;
  final bool onEventLog;
  final bool onChangeLog;
  final bool onTransitionLog;
  final bool onErrorLog;
  final bool onCloseLog;

  PokedexBlocObserver({
    this.onCreateLog = false,
    this.onEventLog = false,
    this.onChangeLog = false,
    this.onTransitionLog = false,
    this.onErrorLog = false,
    this.onCloseLog = false,
  });

  @override
  void onCreate(BlocBase bloc) {
    if (onCreateLog) {
      log('onCreate -- ${bloc.runtimeType}');
    }
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (onEventLog) {
      log('onEvent -- ${bloc.runtimeType}, $event');
    }
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (onChangeLog) {
      log('onChange -- ${bloc.runtimeType}, $change');
    }
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (onTransitionLog && bloc is! PokemonDetailsBloc) {
      log('onTransition -- ${bloc.runtimeType}, ${transition.currentState.runtimeType} -> ${transition.nextState.runtimeType}');
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (onErrorLog) {
      log('onError -- ${bloc.runtimeType}, $error');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    if (onCloseLog) {
      log('onClose -- ${bloc.runtimeType}');
    }
    super.onClose(bloc);
  }
}
