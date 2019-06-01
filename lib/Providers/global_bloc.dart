import 'dart:async';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';


class GlobalBloc implements BlocBase {

  double _position = 0.0;

  StreamController<double> _shipCtrl = StreamController<double>();
  Stream<double> get shipStream => _shipCtrl.stream;

  StreamController<double> _moveCtrl = StreamController<double>();
  Sink<double> get moveSink => _moveCtrl.sink;

  GlobalBloc() {
    _shipCtrl.sink.add(_position);
    _moveCtrl.stream.listen(_move);
  }

  @override
  void dispose() {
    _shipCtrl.close();
    _moveCtrl.close();
  }

  void _move(double _mov) async {
    _position = _position + _mov;
    _shipCtrl.sink.add(_position);
  } 
}
