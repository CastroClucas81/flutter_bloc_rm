import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/home/home_bloc.dart';
import 'package:flutter_bloc_rm/bloc/home/home_event.dart';
import 'package:flutter_bloc_rm/pages/counter_page.dart';
//https://www.youtube.com/watch?v=NqUx-NfTts4&ab_channel=Flutterly

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //provendo o bloc com blocprovider
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            // no construtor, setando o estado inical
            create: (BuildContext context) => HomeBloc()..add(HomeFetchList()),
          ),
          BlocProvider<CounterBloc>(
            create: (BuildContext context) => CounterBloc(),
          )
        ],
        child: CounterPage(),
        //child: HomePage(),
      ),
    );
  }
}
