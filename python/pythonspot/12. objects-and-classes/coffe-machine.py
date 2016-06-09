# -*- coding: utf-8 -*-

class CoffeMachine:
    name = ""
    beans = 0
    water = 0
    
    def __init__(self, name, beans, water):
        self.name = name
        self.beans = beans
        self.water = water

    def addBean(self):
        self.beans += 1

    def removeBean(self):
        self.beans -= 1

    def addWater(self):
        self.water += 1

    def removeWater(self):
        self.water -= 1

    def printState(self):
        print("Name ... {0}".format(self.name))
        print("Beans .. {0}".format(self.beans))
        print("Water .. {0}\n".format(self.water))

pythonBean = CoffeMachine("Python Bean", 83, 20)
pythonBean.printState()
pythonBean.addBean()
pythonBean.printState()

