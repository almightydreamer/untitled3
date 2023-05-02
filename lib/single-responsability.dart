class Cuboid {
  double height;
  double width;
  double length;

  Cuboid({
    required this.width,
    required this.length,
    required this.height,
  });
}

class Cube {
  double length;

  Cube({
    required this.length,
  });
}

class ShapeOperations {
  void calculateShapeVolume(dynamic shape) {
    print('this function only calculates the volume of the shape');
  }
}
