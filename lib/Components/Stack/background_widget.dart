import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.jpg'),
          fit: BoxFit.fitHeight
        )
      )
    );
  }
}