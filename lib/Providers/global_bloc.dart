import 'dart:async';
import 'dart:ui';

import 'package:hackaton_app_space_invader/Models/bullet.dart';
import 'package:hackaton_app_space_invader/Models/game.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';


class GlobalBloc implements BlocBase {

  StreamController<Game> _gameCtrl = StreamController<Game>();
  Stream<Game> get gameStream => _gameCtrl.stream;

  StreamController<double> _moveCtrl = StreamController<double>();
  Sink<double> get moveSink => _moveCtrl.sink;

  StreamController<List<Bullet>> _shootCtrl = StreamController<List<Bullet>>();
  Sink<List<Bullet>> get shootSink => _shootCtrl.sink;




  GlobalBloc() {
    _moveCtrl.stream.listen(_move);
    _shootCtrl.stream.listen(_shoot);
  }

  @override
  void dispose() {
    _shootCtrl.close();
    _gameCtrl.close();
    _moveCtrl.close();
  }

  void _move(double mov) async {

  } 

    void _shoot(int boom) async {

  } 
}
