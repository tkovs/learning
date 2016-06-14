# -*- coding: utf-8 -*-

class User:
    name = ""

    def __init__(self, name):
        self.name = name

    def sayHello(self):
        print("Olá, meu nome é {0}!".format(self.name))

james = User("James")
david = User("David")
eric = User("Eric")

james.sayHello()
