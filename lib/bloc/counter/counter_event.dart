import 'package:equatable/equatable.dart';

class CounterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}
