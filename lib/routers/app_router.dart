import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/home/home_bloc.dart';
import 'package:flutter_bloc_rm/pages/counter_page.dart';
import 'package:flutter_bloc_rm/pages/home_page.dart';
import 'package:flutter_bloc_rm/pages/teste_page.dart';

// provendo o bloc blocal através das rotas
class AppRouter {
  //final HomeBloc _homeBloc = HomeBloc();
  //final CounterBloc _counterBloc = CounterBloc();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case '/counterPage':
        return MaterialPageRoute(
          builder: (_) => CounterPage(),
        );
      case '/testePage':
        return MaterialPageRoute(
          builder: (_) => TestePage(),
        );
      default:
        return null;
    }
  }

  /*
  void dispose() {
    _counterBloc.close();
  }
  */
}

/*
alteranativa caso não use o bloc provider antes do material app
Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/homepage':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _homeBloc,
            child: HomePage(),
          ),
        );
      case '/counterPage':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterBloc,
            child: CounterPage(),
          ),
        );
      case '/testePage':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterBloc,
            child: TestePage(),
          ),
        );
      default:
        return null;
    }
  }

*/
