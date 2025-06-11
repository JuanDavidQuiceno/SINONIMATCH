import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

/// Encargado de observar los cambios en todos los blocs
class ObserverBloc extends BlocObserver {
  final Logger _logger = Logger();

  /// Cuando ocurre un evento en cualquier bloc
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.d('bloc: ${bloc.runtimeType}, event: $event');
  }

  /// Cuando ocurre una transición de estados en cualquier bloc
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    _logger.d('bloc: ${bloc.runtimeType}, transition: $transition');
  }

  /// Cuando ocurre un error en cualquier bloc
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    _logger.d(
      'bloc: ${bloc.runtimeType}, error: $error, stacktrace: $stacktrace',
    );
  }

  // nuevos
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    _logger.i('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    _logger.f('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    _logger.w('onClose -- ${bloc.runtimeType}');
  }
}
