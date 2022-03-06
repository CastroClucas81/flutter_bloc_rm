import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/navigator/navigator_event.dart';
import 'package:flutter_bloc_rm/bloc/navigator/navigator_state.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorState> {
  NavigatorBloc() : super(HomePageState());

  @override
  Stream<NavigatorState> mapEventToState(NavigatorEvent event) async* {
    switch (event.runtimeType) {
      case ChangeToCounterPageEvent:
        yield CounterPageState();
        break;
      case ChangeToCounterPageEvent:
        yield HomePageState();
        break;
      default:
    }
  }
}
