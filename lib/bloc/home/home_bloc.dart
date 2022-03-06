import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/home/home_event.dart';
import 'package:flutter_bloc_rm/bloc/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoadingState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    switch (event.runtimeType) {
      case HomeFetchList:
        yield await _fetchList();
        break;
      // essas classes nao são obrigatórias... os estados que vão definir as ações
      case HomeFetchListWithEmptyList:
        yield await _fetchListWithEmptyList();
        break;
      case HomeFetchListWithError:
        yield await _fetchListWithError();
        break;
    }
  }

  //aqui eu crio minhas funções (http por exemplo)
  //simulando uma requisicao html
  Future<HomeState> _fetchList() async {
    var list = await Future.delayed(
      Duration(seconds: 3),
      () => <String>[
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6',
        'Item 7',
        'Item 8',
        'Item 9',
        'Item 10',
        'Item 11',
        'Item 12',
      ],
    );

    return HomeLoadedState(list: list);
  }

  //ilustrando apenas um error
  Future<HomeState> _fetchListWithError() async {
    return await Future.delayed(
      Duration(seconds: 3),
      () => HomeErrorState(message: "Não foi possível carregar..."),
    );
  }

  Future<HomeState> _fetchListWithEmptyList() async {
    return HomeEmptyListState(message: "Lista vazia");
  }
}
