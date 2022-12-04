/*
Factory Method is a creational design pattern that provides an interface for creating objects in a superclass, 
but allows subclasses to alter the type of objects that will be created.
*/

void main() {
  print("*******Only Transport Through Road By Truck*******");
  Transportation transport = Transportation();
  transport.TransportService();

  // Lets Call the Service
  print("*******Solution*******");
  TransportationService transportationService =
      TransportationService(TransportationType.Road);
  transportationService.TransportationBy();

  // What if user required service not there
  // TransportationService(TransportationType.Unknown);
}

/* 
Imagine that you’re creating a logistics management application. The first version of your app can only handle transportation by trucks, 
so the bulk of your code lives inside the Truck class.
*/

class Transportation {
  void TransportService() {
    print("Transporting Through Trucks");
  }
  // Currently We are Only Transporting through Trucks
}

/***********************************************************************************************************************/
/* After a while, your app becomes pretty popular. Each day you receive dozens of requests from sea transportation companies to incorporate sea logistics into the app. */
// Lets Implement the Solution for Sea and Air Transportation

enum TransportationType {
  Road,
  Sea,
  Air,
  // No Service Enum
  Unknown
}

abstract class TransportationService {
  void TransportationBy();
  // Lets Create Factory Method Solution for This

  // its always better to write the factory Method Logics in Seperate Class if the class have one or more functions
  factory TransportationService(TransportationType type) {
    switch (type) {
      case TransportationType.Road:
        {
          return RoadTransportation();
        }
      case TransportationType.Sea:
        {
          return SeaTransportation();
        }
      case TransportationType.Air:
        {
          return AirTransportation();
        }
      default:
        {
          throw Exception('No Service for Required Information');
          // OR You can return any default service
        }
    }
  }
}

class RoadTransportation implements TransportationService {
  @override
  void TransportationBy() {
    print("Transporting Through Road");
  }
}

class SeaTransportation implements TransportationService {
  @override
  void TransportationBy() {
    print("Transporting Through Sea");
  }
}

class AirTransportation implements TransportationService {
  @override
  void TransportationBy() {
    print("Transporting Through Air");
  }
}
