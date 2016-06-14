# -*- coding: utf-8 -*-
#!/user/bin/env python

class Human:
    def sayHello(self, name="None"):
        if name is not None:
            print("Olá {0}!".format(name))
        else:
            print("Olá!")

obj = Human()

obj.sayHello()
obj.sayHello("Guido")
