abstract class Shape {
  double get volume;
}

class Pyramid implements Shape {
  double height;
  double width;
  double length;

  Pyramid({
    required this.width,
    required this.length,
    required this.height,
  });

  @override
  double get volume => width * length * height / 3;
}

