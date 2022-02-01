import 'package:robot_simulator/orientation.dart';
import 'package:robot_simulator/position.dart';

class Robot {
  late Position position;
  late Orientation orientation;
  Map<Orientation, Position> orientPos = {
    Orientation.north: Position(0, 1),
    Orientation.east: Position(1, 0),
    Orientation.south: Position(0, -1),
    Orientation.west: Position(-1, 0),
  };

  Robot(Position position, Orientation orientation) {
    this.position = position;
    this.orientation = orientation;
  }

  void applyMoveToOrient(String direction) {
    var orients = Orientation.values;
    int i = orients.indexOf(this.orientation);
    if (direction == "R")
      ++i;
    else
      --i;
    this.orientation = orients[i % orients.length];
  }

  void move(String directions) {
    for (int i = 0; i < directions.length; i++) {
      String d = directions[i];
      switch (d) {
        case "R":
        case "L":
          applyMoveToOrient(d);
          break;
        case "A":
          position.add(orientPos[orientation]!);
          break;
      }
    }
  }
}
