import 'package:untitled3/open-closed.dart';

class Material {
  double density;

  Material(this.density);
}

class WeightCalculator {
  Shape shape;
  Material material;

  WeightCalculator({required this.shape, required this.material});

  double get weight {
    return shape.volume * material.density;
  }
}
