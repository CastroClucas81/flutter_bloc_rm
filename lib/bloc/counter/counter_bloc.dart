import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case CounterIncrement:
        yield CounterState(counter: state.counter + 1);
        break;

      case CounterDecrement:
        if (state.counter > 0) yield CounterState(counter: state.counter - 1);
        break;
    }
  }
}
