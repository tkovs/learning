# Tipo de dado imutável

# Tupla vazia
empty_tuple = ()

# Tupla de 1 item, a vírgula é necessária)
other_tuple = (3,)

# Acesso
names = ("Vitor", 18, "Arapiraca")
print("Nome....... ", names[0])
print("Cidade..... ", names[2])

# Atribuindo valores a múltiplas variáveis
name, age, city = names

print("Nome....... ", name)
print("Idade...... ", age)
print("Cidade..... ", city)

# Acrescentando tuplas a tuplas
contact = ("666-666", "tkovs@outlook.com")
full = names + contact
full = full + ("Haskell",)
print("Resultado.. ", full)

# Convertendo tupla para lista
tuple_list = list(full)
print(tuple_list)

# Lista para tupla
numbers = [1,2,3,4,5]
list_tuple = tuple(numbers)
print(list_tuple)

# Tupla para string
# Se a tupla contém apenas string, é possível
words = ("C", "Haskell", "Ruby", "Brainfuck", "Erlang")
string = ' '.join(words)
print(string)

# Ordenando tuplas
words = tuple(sorted(words))
print(words)
