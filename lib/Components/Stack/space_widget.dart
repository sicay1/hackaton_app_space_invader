import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget{
  SpaceWidget({this.shipPosition});
  final double shipPosition;
  static const double _correction = 0.0;
  static const double _shipAltitude = 0.5;

  @override
  Widget build(BuildContext context) {
    final double _maxWidth = MediaQuery.of(context).size.width;
    final double _maxHeight = MediaQuery.of(context).size.height;

    Alignment _alignment = Alignment(((shipPosition +_correction)*2)/(_maxWidth-1), _shipAltitude);

    return Center(
      child: Align(
        alignment: _alignment,
        child: FlutterLogo(),
      )
    );
  }
}