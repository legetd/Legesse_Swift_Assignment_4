
/*
 1. Assignment 4

  * Trailer Property: brand (String) Methods: startEngine(), stopEngine()
  * WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
  * class the Camper class must conform to the protocols you have adopted.
  * write test code to demonstrate the functionality of the Camper class
 */


// Protocols
protocol Trailer {
    var trailer: String { get set }
    var brand: String { get set }
    func startEngine()
    func stopEngine()
}

protocol WaterSystem {
    var waterCapacity: Double { get set }
    func fillWater()
    func drainWater()
}

// Camper class Trailer and WaterSystem protocols
class Camper: Trailer, WaterSystem {
    var brand: String
    var trailer: String
    var waterCapacity: Double
    
    init(brand: String, trailer: String, waterCapacity: Double) {
        self.brand = brand
        self.trailer = trailer
        self.waterCapacity = waterCapacity
    }
    
    func startEngine() {
        print("Engine of \(brand) started.")
    }
    
    func stopEngine() {
        print("Engine of \(brand) stopped.")
    }
    
    func fillWater() {
        print("Water tank filled in \(brand).")
    }
    
    func drainWater() {
        print("Water tank drained in \(brand).")
    }
}

// Test code
let myCamper = Camper(brand: "fun", trailer: "100", waterCapacity: 50.0)
myCamper.startEngine()
myCamper.fillWater()
myCamper.drainWater()
myCamper.stopEngine()
