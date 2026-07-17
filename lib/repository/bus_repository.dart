import '../models/bus_route.dart';

class BusRepository {
  static List<BusRoute> getAllRoutes() {
    return [
      BusRoute(
        busNo: "23A",
        source: "GL Bajaj",
        destination: "Pari Chowk",
        eta: "12 mins",
      ),
      BusRoute(
        busNo: "15",
        source: "Sector 62",
        destination: "Botanical Garden",
        eta: "8 mins",
      ),
      BusRoute(
        busNo: "42B",
        source: "Knowledge Park",
        destination: "Alpha 1",
        eta: "18 mins",
      ),
      BusRoute(
        busNo: "101",
        source: "Noida City Centre",
        destination: "Greater Noida",
        eta: "25 mins",
      ),
    ];
  }
}