#produtos é um array mas a chamada da sua função não precisa ser em formato de array
def compra(*produtos)
	puts produtos.to_s
end

def venda(produtos)
	puts produtos.to_s
end

compra(1,2,3,4)
venda([1,2,3,4])