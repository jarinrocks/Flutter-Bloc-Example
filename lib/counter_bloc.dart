import 'dart:async';

class CounterBloc{

  int count = 0;

  // Sending value to Stream
  final StreamController<int> _counterController = StreamController<int>();

  // Expose value to StreamBuilder
  Stream<int> get counterStream => _counterController.stream;

  incrementCounter(){
    _counterController.sink.add(count++);
  }

  void dispose(){
    _counterController.close();
  }

}

final counterBloc = CounterBloc();