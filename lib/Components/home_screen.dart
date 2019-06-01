import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

class HomeScreen extends StatelessWidget {


  Widget _moveLeftFab = Container();
  Widget _moveRightFab = Container();
  Widget _shootFab = Container();

  @override
  Widget build(BuildContext context) {
    GlobalBloc _bloc = BlocProvider.of<GlobalBloc>(context);
    return Scaffold(
      body: StreamBuilder(
        stream: _bloc.,
        builder: (BuildContext context, AsyncSnapshot snapshot) {

        },),
      floatingActionButton: Row(
        children: <Widget>[
          Column(children: <Widget>[
          _moveLeftFab,
          _moveRightFab
          ],),
          _shootFab,
      ],),
    );
  }
}