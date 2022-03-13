import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_rm/bloc/home/home_bloc.dart';
import 'package:flutter_bloc_rm/bloc/home/home_event.dart';
import 'package:flutter_bloc_rm/bloc/home/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeBloc = BlocProvider.of<HomeBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Example"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: _homeBloc,
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return Center(
              // CircularProgressIndicator();
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/counterPage');
                },
                child: Text("clique aqui"),
              ),
            );
          }

          if (state is HomeLoadedState) {
            return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.list[index]),
                );
              },
            );
          }

          if (state is HomeErrorState) {
            return Center(
              child: Text(state.message),
            );
          }

          if (state is HomeEmptyListState) {
            return Center(
              child: Text(state.message),
            );
          }

          return Center(
            child: Text("Error Inesperado."),
          );
        },
      ),
    );
  }
}
