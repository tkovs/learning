# -*- coding: utf-8 -*-

items = ["Abby", "Brenda", "Cindy", "Diddy"]
count = 0

for item in items:
    print(item)
# end 

for i in range(1, 10):
    print(i)
# end 

for x in range(1,10):
    for y in range(1,10):
        print("(" + str(x) + "," + str(y) + ")")
# end 

for x in range(1,20):
    if (x % 2 == 0 or x % 3 == 0):
        continue
    # end 

    print(x)
# end 

count = 0
while (count < 9):
    print("Count: " + str(count))
    count += 1
else:
    print("Não é menor que 9")
