import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/navigator/navigator_event.dart';
import 'package:flutter_bloc_rm/bloc/navigator/navigator_state.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorState> {
  NavigatorBloc() : super(NavigatorState(page: EnumPages.homePage));

  @override
  Stream<NavigatorState> mapEventToState(NavigatorEvent event) async* {
    switch (event.runtimeType) {
      case ChangeToCounterPageEvent:
        yield NavigatorState(page: EnumPages.counterPage);
        break;
      case ChangeToHomePageEvent:
        yield NavigatorState(page: EnumPages.homePage);
        break;
      default:
    }
  }
}
