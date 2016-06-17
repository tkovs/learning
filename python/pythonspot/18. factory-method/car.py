class Car(object):
    def factory(type):
        if type == "Racecar":
            return Racecar()
        elif type == "Van":
            return Van()
        assert 0, "Bad car creation: " + type

    factory = staticmethod(factory)

class Racecar(Car):
    def drive(self):
        print("Racecar driving")

class Var(Car):
    def drive(self):
        print("Van driving")

obj = Car.factory("Racecar")
obj.drive()
