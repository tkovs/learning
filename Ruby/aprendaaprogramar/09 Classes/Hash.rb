corArray = []  #  o mesmo que Array.new
corHash  = {}  #  o mesmo que Hash.new

corArray[0]         = 'vermelho'
corArray[1]         = 'verde'
corArray[2]         = 'azul'
corHash['strings']  = 'vermelho'
corHash['numbers']  = 'verde'
corHash['keywords'] = 'azul'

corArray.each do |cor|
  puts cor
end

corHash.each do |tipo, cor|
  puts tipo + ':  ' + cor
end
