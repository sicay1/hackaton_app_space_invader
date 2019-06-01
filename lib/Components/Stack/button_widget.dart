import 'package:flutter/material.dart';
import 'package:hackaton_app_space_invader/Components/button_component.dart';
import 'package:hackaton_app_space_invader/Components/trigger.dart';

class ButtonWidget extends StatelessWidget {
  static const int _left = -1;
  static const int _right = 1;
  
  @override
  Widget build(BuildContext context) {
    return 
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(width: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                ButtonComponent(
                direction: _left,
                icon: Icon(Icons.arrow_left),
              ),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(width: 60),
                  ButtonComponent(
                    direction: _right,
                    icon: Icon(Icons.arrow_right),
                  ),
                  Container(width: 140,),
                  Trigger()
                ],
              ),
            ],
          ),
      
        ],
      );
  }
}