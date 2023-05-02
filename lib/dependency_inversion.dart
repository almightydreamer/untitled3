class TVConnection {
  dynamic satelliteConnection;

  TVConnection(this.satelliteConnection);
}

abstract class SatelliteConnection {
  getData();
}

class SimpleSatelliteConnection implements SatelliteConnection {
  @override
  getData() {
    print('converting simple satellite data into tv-friendly data so data is not dependent on the provider');
  }
}

class StarLinkSatelliteConnection implements SatelliteConnection {
  @override
  getData() {
    print('converting starlink satellite data into tv-friendly data so data is not dependent on the provider');
  }
}
