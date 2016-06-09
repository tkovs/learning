# -*- coding: utf-8 -*-

class Car:
    __maxspeed = 0
    __name = ""

    def __init__(self):
        self.__maxspeed = 200
        self.__name = "Supercar"

    def drive(self):
        print("Driving. Max speed: " + str(self.__maxspeed))

    def setSpeed(self, speed):
        self.__maxspeed = speed

redcar = Car()
redcar.drive()
redcar.max__speed = 10 # Não funciona
redcar.drive()
redcar.setSpeed(10)
redcar.drive()
