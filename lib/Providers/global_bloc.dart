import 'dart:async';

import 'package:hackaton_app_space_invader/Models/game.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';


class GlobalBloc implements BlocBase {

  StreamController<Game> _cursorCtrl = StreamController<Game>();
  Stream<Game> get cursorStream => _cursorCtrl.stream;

  StreamController<double> _moveCtrl = StreamController<double>();
  Sink<double> get moveSink => _moveCtrl.sink;

  StreamController<int> _shootCtrl = StreamController<int>();
  Sink<int> get shootSink => _shootCtrl.sink;
  GlobalBloc() {
    _moveCtrl.stream.listen(_move);
    _shootCtrl.stream.listen(_shoot);
  }

  @override
  void dispose() {
    _shootCtrl.close();
    _cursorCtrl.close();
    _moveCtrl.close();
  }

  void _move(double mov) async {

  } 

    void _shoot(int boom) async {

  } 
}
