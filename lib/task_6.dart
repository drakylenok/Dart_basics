import 'dart:math';

class Point {
  late double x;
  late double y;
  late double z;

  Point(double x, double y, double z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.vector1() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    return (sqrt((x - another.x) * (x - another.x) +
        (y - another.y) * (y - another.y) +
        (z - another.z) * (z - another.z)));
  }
}
