import 'package:hackaton_app_space_invader/Models/bullet.dart';
import 'package:hackaton_app_space_invader/Models/ship.dart';

class Game {
  Game({this.ship,this.bullets});
  final Ship ship;
  final List<Bullet> bullets;
}