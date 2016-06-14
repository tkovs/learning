# -*- coding: utf-8 -*-

class User:
    def __init__(self, name):
        self.name = name

    def printName(self):
        print("Nome : {0}".format(self.name))

class Programmer(User):
    def __init__(self, name):
        self.name = name

    def doPython(self):
        print("Programando em Python")

brian = User("Brian")
brian.printName()
# brian.doPython() # Não existe esse método em User

diana = Programmer("Diana")
diana.printName()
diana.doPython()
