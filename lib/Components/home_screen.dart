import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Components/Stack/bullets.dart';
import 'package:hackaton_app_space_invader/Components/Stack/button_widget.dart';
import 'package:hackaton_app_space_invader/Components/Stack/space_widget.dart';
import 'package:hackaton_app_space_invader/Components/Stack/target.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

import 'Stack/background_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalBloc _bloc = BlocProvider.of<GlobalBloc>(context);
    return StreamBuilder<double>(
        stream: _bloc.shipStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final double _maxWidth = MediaQuery.of(context).size.width;
          final double _shipPosition = snapshot.data;
          // if ((_shipPosition>= _maxWidth-2)||(_shipPosition<2)) {
          //   _bloc.stopSink.add(true);
          // }
          return Stack(
            children: <Widget>[
              BaseLayout(), // BACKGROUND here
              Bullets(), // BULLETS
              Target(), // //second /third #### TARGET
              SpaceWidget(shipPosition: _shipPosition), //second /third
              ButtonWidget(), //TOP widget
            ],
          );
        });
  }
}
