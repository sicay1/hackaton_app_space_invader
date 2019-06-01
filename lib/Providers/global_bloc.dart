import 'dart:async';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';

class GlobalBloc implements BlocBase {
  Timer timer;
  int _direction = 0;
  double _position = 0.0;
  static const Duration _duration = Duration(milliseconds: 1);
  static const double _speedSpaceShip = 0.3;

  StreamController<double> _shipCtrl = StreamController<double>.broadcast();
  Stream<double> get shipStream => _shipCtrl.stream;

  StreamController<double> _bulletCtrl = StreamController<double>.broadcast();
  Stream<double> get bulletStream => _bulletCtrl.stream;

  StreamController<bool> _shootCtrl = StreamController<bool>();
  Sink<bool> get shootSink => _shootCtrl.sink;

    void _moveShip(Timer t) {
      _position = _position + (_speedSpaceShip * _direction);
      _shipCtrl.sink.add(_position);
    }

  StreamController<int> _moveCtrl = StreamController<int>();
  Sink<int> get moveSink => _moveCtrl.sink;

  StreamController<bool> _stopCtrl = StreamController<bool>();
  Sink<bool> get stopSink => _stopCtrl.sink;

  GlobalBloc() {
    _shipCtrl.sink.add(_position);
    _moveCtrl.stream.listen(_move);
    _stopCtrl.stream.listen(_stop);
    _shootCtrl.stream.listen(_shoot);
  }

  @override
  void dispose() {
    _bulletCtrl.close();
    _stopCtrl.close();
    _shipCtrl.close();
    _moveCtrl.close();
    _shootCtrl.close();
  }

  void _shoot(bool o) {
    _bulletCtrl.sink.add(_position);
  }

  void _move(int _dir) async {
    _cancelTimer();
    _direction = _dir;
    timer = Timer.periodic(_duration, _moveShip);
  }

  void _stop(data) {
    _cancelTimer();
  }

  void _cancelTimer() {
    if (timer != null) {
      timer.cancel();
    }
  }
}
