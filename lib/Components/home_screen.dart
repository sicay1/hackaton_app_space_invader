import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Components/button_component.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

class HomeScreen extends StatelessWidget {

static const int _left = -1;
static const int _right = 1;
static const double _speed = 1.0;



  @override
  Widget build(BuildContext context) {

    Widget _shootButton = Container();


    GlobalBloc _bloc = BlocProvider.of<GlobalBloc>(context);
    return Scaffold(
      body: StreamBuilder<double>(
        stream: _bloc.shipStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final double _shipPosition = snapshot.data;
          return Container(child: Center(
            child:Text(_shipPosition.toString())
          ),);
        },),
      floatingActionButton: Row(
        children: <Widget>[
          Column(children: <Widget>[
          ButtonComponent(
            direction: _left,
            speed: _speed,
            icon:  Icon(Icons.arrow_left),
            ),
           ButtonComponent(
            direction: _right,
            speed: _speed,
            icon:  Icon(Icons.arrow_left),
           ),
          ],),

          // #### ADD SHOOTING BUTTON!

          _shootButton,
      
      ],),
    );
  }
}