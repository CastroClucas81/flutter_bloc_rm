import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case CounterIncrement:
        yield state + 1;
        break;

      case CounterDecrement:
        if (state > 0) yield state - 1;
        break;
    }
  }
}
