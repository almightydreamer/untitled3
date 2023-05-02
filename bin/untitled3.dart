import 'package:untitled3/dependency_inversion.dart';
import 'package:untitled3/liskov.dart';
import 'package:untitled3/open-closed.dart';
import 'package:untitled3/single-responsability.dart';

void main() {
  singleResponsability();
  openClosed();
  liskov();
  dependencyInversion();
}

void singleResponsability() {
  var cuboid = Cuboid(width: 3, length: 4, height: 5);
  var cube = Cube(length: 4);

  ShapeOperations().calculateShapeVolume(cuboid);
}

void openClosed() {
  var pyramid = Pyramid(width: 5, length: 8, height: 10);

  if (pyramid is Shape) {
    print('the pyramid is a shape and the volume is ${pyramid.volume}');
  }
}

void liskov() {
  var pyramid = Pyramid(width: 3, length: 10, height: 10);

  var weightCalculator = WeightCalculator(shape: pyramid, material: Material(1.5));
  print(weightCalculator.weight);
}

void dependencyInversion() {
  var simpleSatellite = SimpleSatelliteConnection();
  var starlinkSatellite = StarLinkSatelliteConnection();
  var tvConnectionWithSimpleConnection = TVConnection(simpleSatellite);
  print(
      '$tvConnectionWithSimpleConnection with ${tvConnectionWithSimpleConnection.satelliteConnection.toString()} works');
  var tvConnectionWithStarLinkConnection = TVConnection(starlinkSatellite);
  print(
      '$tvConnectionWithStarLinkConnection with ${tvConnectionWithStarLinkConnection.satelliteConnection.toString()} works too');
}
