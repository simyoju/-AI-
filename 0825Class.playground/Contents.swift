import UIKit

// class 상속
class Vehicle {
    var speed = 0.0

    func speedUp() { speed += 10 }
    func speedDn() { speed -= 10 }
}

class Car : Vehicle {
    var wheelCount:Int
    var seatCount:Int
    
    init(wheelCount:Int, seatCount:Int) {
        self.wheelCount = wheelCount
        self.seatCount = seatCount
    }
}

var car = Car(wheelCount: 4, seatCount: 4)
car.wheelCount = 4
car.speedUp() //상속받았기 때문에 Vehicle의 함수 사용 가능
car.speedDn()
car.speed = 10

class Truck : Car {
    var loadage:Int = 0
    
    func printLoad(){
        print("load")
    }
    
    func printUnLoad(){
        print("unLoad")
    }
    
    override func speedUp() {
        speed += 5
    }
}

var truck = Truck(wheelCount: 8, seatCount: 2)
truck.printLoad()
truck.printUnLoad()
truck.speedUp()
truck.speedDn()
truck.speed
truck.seatCount

truck.speedUp()
truck.speed

// 메소드 상속

class SportsCar: Car {
    override func speedUp() {
        speed += 30
    }
}

var anotherCar = Car(wheelCount: 4, seatCount: 4)
anotherCar.speedUp()
print(anotherCar.speed)

var anotherTruck = Truck(wheelCount: 6, seatCount: 2)
anotherTruck.speedUp()
print(anotherTruck.speed)

var spotsCar = SportsCar(wheelCount: 4, seatCount: 2)
spotsCar.speedUp()
print(spotsCar.speed)

class lastVehicle {
    var wheels:Int
    var seats:Int
    var engine:Int
    
    init(wheels:Int, seats:Int, engine:Int) {
        self.wheels = wheels
        self.seats = seats
        self.engine = engine
    }
    
    func drive(){
        print("Run")
    }
}

var bike = lastVehicle(wheels: 2, seats: 1, engine: 2)
print(bike.self)
print("bike.wheels = \(bike.wheels)")
print("bike.seats = \(bike.seats)")
bike.wheels = 3
print("bike.wheels = \(bike.wheels)")
bike.drive()

var lastCar = lastVehicle(wheels: 4, seats: 4, engine: 4)
print("bike.wheels = \(lastCar.wheels)")
print("bike.seats = \(lastCar.seats)")
lastCar.drive()

var copyBike = bike
copyBike.wheels = 3
print("bike.wheels = \(bike.wheels)")

