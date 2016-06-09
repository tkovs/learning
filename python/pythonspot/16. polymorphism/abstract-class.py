class Document:
    def __init__(self, name):
        self.name = name

    def show(self):
        raise NotImplementedError("Subclasse deve implementar métodos abstratos")

class Pdf(Document):
    def show(self):
        return "Show pdf contents!"

class Word(Document):
    def show(self):
        return "Show word contents!"

## Other sample

class Car:
    def __init__(self, name):    
        self.name = name
 
    def drive(self):             
        raise NotImplementedError("Subclasse deve implementar método abstrato")
 
    def stop(self):             
        raise NotImplementedError("Subclasse deve implementar método abstrato")
 
class Sportscar(Car):
    def drive(self):
        return 'Dirigindo Sportscar!'
 
    def stop(self):
        return 'Parando Sportscar!'
 
class Truck(Car):
    def drive(self):
        return 'Caminhão dirigindo devagar porque está carregando peso.'
 
    def stop(self):
        return 'Parando o caminhão!'
 
 
cars = [Truck('Caminhão Azul'),
        Truck('Caminhão Laranja'),
        Sportscar('Z3')]
 
documents = [Pdf('Document1'),
             Pdf('Document2'),
             Word('Document3')]

for car in cars:
    print("{0}: {1}".format(car.name, car.drive()))

for document in documents:
    print("{0}: {1}".format(document.name, document.show()))

