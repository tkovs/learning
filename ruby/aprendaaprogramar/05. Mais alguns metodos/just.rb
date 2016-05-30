largura = 40
str = '--> text <--'
puts str.ljust 40
puts str.center 40
puts str.rjust 40
puts str.ljust (largura/2)
#Erro na linha seguinte
#puts str.ljust (largura/2) + str.rjust (largura/2)
#syntax error, unexpected ( arg, expecting end-of-input puts str.ljust (largura/2) + str.rjust (largura/2)
