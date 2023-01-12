import 'dart:async';

abstract class TodoAppStateX<T> {
  late T _state;
  late StreamController<T> _streamController;

  TodoAppStateX(T initState) {
    _create(initState);
  }

  TodoAppStateX.autoDispose(T initState) {
    _create(initState);
    _streamController.onCancel = close;
  }

  T get state => _state;

  set state(T newState) => _addToSink(newState);

  Stream<T> get stream => _streamController.stream;

  void _create(T initState) {
    _streamController = StreamController<T>.broadcast();
    _addToSink(initState);
    init();
  }

  void _addToSink(T initState) {
    _state = initState;
    _streamController.sink.add(_state);
  }

  void close() {
    _streamController.close();
    dispose();
  }

  void error(Object error) {
    _streamController.addError(error);
    throw error;
  }

  void executeState(T newState) => _addToSink(newState);

  void init() {}

  void dispose() {}
}
