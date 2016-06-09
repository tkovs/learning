# -*- coding: utf-8 -*-

# PYTHON NÃO TEM PROTECTED CLASS METHODS

class Car:
    def __init__(self):
        self.__updateSoftware()

    def drive(self):
        print("Driving")

    def __updateSoftware(self):
        print("Updating software")

redcar = Car()
redcar.drive()
