numeros = [1,2,3,4,5]

def soma(a, b):
    return a + b

def dobro(x):
    return x + x

def par(x):
    return (x % 2 == 0)

def map(f, lista):
    return [f(x) for x in lista]

def filter(f, lista):
    return [x for x in lista if f(x)]

def head(lista):
    return lista[:1]

def tail(lista):
    return lista[1:]

print("Números ...... " + str(numeros))
print("Soma ......... " + str(soma(3, 9)))
print("Map dobro .... " + str(map(dobro, numeros)))
print("Filter par ... " + str(filter(par, numeros)))
print("Tail ......... " + str(tail(numeros)))
