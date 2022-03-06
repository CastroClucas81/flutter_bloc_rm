enum EnumPages {
  counterPage,
  homePage,
  testePage,
}

class NavigatorState {
  final EnumPages page;

  NavigatorState({required this.page});
}
