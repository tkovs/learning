# -*- coding: utf-8 -*-

nomes = ["C", "Clojure", "Elixir", "Go"]

print("Lista............ ", nomes)
print("Item da lista.... ", nomes[2])
print("Parte da lista... ", nomes[1:3])

nomes.append("Haskell")
print("Append Haskell... ", nomes)
nomes.remove("Clojure") # Ou del nomes[index]
# nomes.remove("Java") # Isto dá erro na intepretação

print("Remove Clojure... ", nomes)
print("Tamanho.......... ", len(nomes))
nomes.reverse()
print("Inversa.......... ", nomes)
nomes.sort()
print("Ordenada......... ", nomes)
