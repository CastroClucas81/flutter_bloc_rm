import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_rm/bloc/counter/counter_state.dart';
import 'package:flutter_bloc_rm/pages/teste_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  _counterBloc.add(CounterDecrement());
                },
                child: Text("Decrementar"),
              ),
              BlocBuilder<CounterBloc, CounterState>(
                bloc: _counterBloc,
                builder: (context, state) {
                  return Text(
                    state.counter.toString()
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  _counterBloc.add(CounterIncrement());
                },
                child: Text("Incrementar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider.value(
                        value: BlocProvider.of<CounterBloc>(context),
                        child: TestePage(),
                      ),
                    ),
                  );
                },
                child: Text("teste"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
