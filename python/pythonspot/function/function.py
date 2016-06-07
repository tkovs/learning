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

print(soma(3, 9))
print(map(dobro, numeros))
print(filter(par, numeros))
