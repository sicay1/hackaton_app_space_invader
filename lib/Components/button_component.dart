import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

class ButtonComponent extends StatelessWidget {
  ButtonComponent({this.icon,this.direction,this.speed});
  final int direction;
  final Widget icon;
  final double speed;
  static const Color _primaryColor = Colors.white;
  static const Color _secondaryColor = Colors.blueAccent;
  static const double size = 60.0;
  static const Duration _duration = Duration(milliseconds: 1);
  static const double _padding = 10.0;
  static const  double _borderW = 1.0;
  static const  double _blur = 8.0;

  


  @override
  Widget build(BuildContext context) {
    GlobalBloc _bloc = BlocProvider.of<GlobalBloc>(context);

    Timer timer;

    void _move(Timer t) {
      _bloc.moveSink.add(speed*direction);
    }

    void _onTapDown(TapDownDetails tap) {
      timer = Timer.periodic(_duration, _move); // Takes care of hold
    }

    void _onTapUp(TapUpDetails tap) {
      timer.cancel();
    }

    return GestureDetector(
        onTapUp: _onTapUp,
        onTapDown: _onTapDown,
        child: Container(
          height: size ,
          width: size ,
          padding: EdgeInsets.all(_padding),
          decoration: BoxDecoration(
              border: Border.all(color: _primaryColor, width: _borderW),
              borderRadius: BorderRadius.circular(size-_padding),
              color: _secondaryColor,
              boxShadow: [BoxShadow(color: _primaryColor, blurRadius: _blur),],
          ),
          child:  icon,
        ),
    );
  }
}