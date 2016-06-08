# -*- coding: utf-8 -*-
# Para reconhecer caracteres UTF-8, usa-se a linha abaixo, como diz a documentação

nome = "Joao Vitor Rodrigues da Silva"
dia = "Quinta"

# O operador % usado abaixo está meio que obsoleto
# print("Meu nome é %s e hoje é %s") % (nome, dia)
# No lugar dele, usa-se a função format
print("Meu nome é {0} e hoje é {1}".format(nome, dia))
print(dia[2], dia[3]); # 0..n
print("Nome nao completo: " + nome[5:10])
