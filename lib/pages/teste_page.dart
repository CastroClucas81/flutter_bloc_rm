import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_bloc.dart';

class TestePage extends StatelessWidget {
  const TestePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      body: Container(
        child: Text(_counterBloc.state.toString()),
      ),
    );
  }
}
