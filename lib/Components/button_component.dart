import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Providers/bloc_provider.dart';
import 'package:hackaton_app_space_invader/Providers/global_bloc.dart';

class ButtonComponent extends StatelessWidget {
  ButtonComponent({this.icon, this.direction});
  final int direction;
  final Widget icon;
  static const Color _primaryColor = Colors.blueAccent;
  static const Color _secondaryColor = Colors.white;
  static const double size = 80.0;
  static const double _padding = 10.0;
  static const double _borderW = 1.0;
  static const double _blur = 8.0;

  @override
  Widget build(BuildContext context) {
    GlobalBloc _bloc = BlocProvider.of<GlobalBloc>(context);

    void _onTapUp(TapUpDetails tap) {
      _bloc.stopSink.add(true);
    }

    void _onTapDown(TapDownDetails tap) {
        _bloc.moveSink.add(direction);
    }

    return GestureDetector(
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      child: Container(
        height: size,
        width: size,
        padding: EdgeInsets.all(_padding),
        decoration: BoxDecoration(
          border: Border.all(color: _primaryColor, width: _borderW),
          borderRadius: BorderRadius.circular(size - _padding),
          color: _secondaryColor,
          boxShadow: [
            BoxShadow(color: _primaryColor, blurRadius: _blur),
          ],
        ),
        child: icon,
      ),
    );
  }
}