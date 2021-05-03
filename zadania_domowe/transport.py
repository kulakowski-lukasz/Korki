class Wheeler:
    
    def __init__(self, wheels, engine):
        self.wheels = wheels
        self.engine = engine

    def roll_forward(self):
        print("Rolling forward")

    def roll_backwards(self):
        print("Rolling backwards")

class Schwimmer:
    
    def __init__(self, engine):
        self.engine = engine

    def swim_forward(self):
        print("Swimming forward")

    def swim_backwards(self):
        print("Swimming backwards") 


#Car
class Car(Wheeler):
    
    def __init__(self, make, milage):
        super().__init__(wheels=4, engine=True)
        self.make = make
        self.milage = milage

    def roll_forward(self):
        print("Driving forward")

    def roll_backwards(self):
        print("Driving backwards")

car = Car("Toyota",80000)
car.roll_forward()

#Bike
class Bike(Wheeler):
    
    def __init__(self, make, milage, can_it_wheelie):
        super().__init__(wheels=2, engine=True)
        self.make = make
        self.milage = milage
        self.can_it_wheelie = can_it_wheelie

    def roll_forward(self):
        print("Speeding af")

    def roll_backwards(self):
        print("Sorry, gotta use legs")

    def wheelie(self):
        if self.can_it_wheelie == "Y":
            print("Noice")
        else:
            print("Well...")

bike = Bike("BMW",800,"Y")
bike.wheelie()

#Bicycle
class Bicycle(Wheeler):
    
    def __init__(self, lights, derailleurs):
        super().__init__(wheels=2, engine=False)
        self.lights = lights
        self.derailleurs = derailleurs

lame = Bicycle("Y",21)
lame.roll_forward()

#Boat
class Boat(Schwimmer):

    def __init__(self):
        super().__init__(engine=True)

boat = Boat()
print(boat.engine)