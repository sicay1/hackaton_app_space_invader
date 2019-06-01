import 'package:flutter/material.dart';

class Target extends StatelessWidget {
  final Widget _atom = Image.asset('assets/atom.png');
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Container(height: 50.0), _atom],
    );
  }
}
