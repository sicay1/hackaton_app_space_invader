import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

class Bullets extends StatefulWidget {
  @override
  _BulletsState createState() => _BulletsState();
}

class _BulletsState extends State<Bullets> {
  static const double _lazerAltitude = 100.0;
  bool _on = false;
  double _startingPoint = 0;
  
  void _shoot(double initialPosition) async {
    _startingPoint = initialPosition;
    _on = true;
    Future.delayed(Duration(milliseconds: 100)).then((i) =>setState(()=>_on = false));
  }

  // final List<Offset> _offsets = [];
  // void _addOffset(double _x) => _offsets.add(Offset(_x, _y));
  @override
  Widget build(BuildContext context) {
    final double _maxWidth = MediaQuery.of(context).size.width;
    final double _maxHeight = MediaQuery.of(context).size.height;
    GlobalBloc _bloc = BlocProvider.of<GlobalBloc>(context);
    _bloc.bulletStream.listen((initialPosition)=> _shoot(initialPosition));

    Widget _lazer() {
        if (_on) {
        return Align(
            alignment: Alignment((_startingPoint*2)/(_maxWidth-1), _lazerAltitude),
            child: Container(
              width: 10.0,
              height: _maxHeight-_lazerAltitude,
              color: Colors.greenAccent
            ),
          );
        } else {
          return Container();
        }
      }
      
    return Container(
      width: _maxWidth - 20,
      height: _maxHeight - 20,
      child: Center(child:
      _lazer()
      ),
    );
  }
}