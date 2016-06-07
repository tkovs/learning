# -*- coding: utf-8 -*-

""" casting

int long float str hex chr ord

sample: int(3.4)

"""

x = 3
y = 2.1531531531532

print("Nós definimos 2 números,")
print("x = " + str(x))
print("y = " + str(y))

i = input("Insira um número: ")
# print(i + 10) # Isto vai gerar um erro pois não se soma um número a uma string

print(int(i) + 10)
