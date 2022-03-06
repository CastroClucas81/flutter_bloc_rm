import 'package:equatable/equatable.dart';

// definindo estados
class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

// vazio
class HomeEmptyListState extends HomeState {
  final String message;

  HomeEmptyListState({required this.message});
}

// carregando
class HomeLoadingState extends HomeState {}

// carregado
class HomeLoadedState extends HomeState {
  final List<String> list;

  HomeLoadedState({required this.list});
}

// erro
class HomeErrorState extends HomeState {
  final String message;

  HomeErrorState({required this.message});
}