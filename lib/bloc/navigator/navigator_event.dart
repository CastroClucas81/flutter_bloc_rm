import 'package:equatable/equatable.dart';

class NavigatorEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChangeToCounterPageEvent extends NavigatorEvent {}

class ChangeToHomePageEvent extends NavigatorEvent {}