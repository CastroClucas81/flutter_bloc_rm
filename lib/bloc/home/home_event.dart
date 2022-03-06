import 'package:equatable/equatable.dart';

// criando os eventos
class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// evento carregar lista
class HomeFetchList extends HomeEvent {}

// retorno vazio
class HomeFetchListWithEmptyList extends HomeEvent {}

// deu error
class HomeFetchListWithError extends HomeEvent {}
