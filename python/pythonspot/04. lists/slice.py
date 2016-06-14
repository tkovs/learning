lista = [0,1,2,3,4,5,6,7,8,9]

print(lista[:5])
print(lista[4:])
print(lista[:])

# Remover um elemento
del lista[4]
print(lista)

lista[3:5] = [] # or del lista[3:5]
print(lista)
