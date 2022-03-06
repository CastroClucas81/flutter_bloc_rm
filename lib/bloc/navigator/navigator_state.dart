import 'package:equatable/equatable.dart';

enum EnumPages {
  counterPage,
  homePage,
  testePage,
}

class NavigatorState extends Equatable {
  final EnumPages page;

  NavigatorState({required this.page});

  @override
  // TODO: implement props
  List<Object?> get props => [page];
}
