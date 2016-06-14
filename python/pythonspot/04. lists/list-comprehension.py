# Compressão de lista consiste de colchetes contendo uma expressão seguida de um for e então
# zero ou mais cláusulas if ou for.

squares = list(map(lambda x: x ** 2, range(10)))
print(squares)

# Melhor que a solução acima é a solução abaixo, usando compressão de lista
squares = [x ** 2 for x in range(10)]
print(squares)

# Código simples abaixo
combs = []
for x in [1,2,3]:
    for y in [3,1,4]:
        if x != y:
            combs.append((x, y))

# Usando tupla, o código acima fica mais claro (pra mim, pelo menos)
combs = [(x, y) for x in [1,2,3] for y in [3,1,4] if x != y]

