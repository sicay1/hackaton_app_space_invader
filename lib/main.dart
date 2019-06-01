import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

import 'Components/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return  BlocProvider<GlobalBloc>(
      bloc: GlobalBloc(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}