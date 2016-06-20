from functools import reduce

initial_list = [1,2,3,4,5,6,7,8,9,10]

squaredList = list(map(lambda x: x*x, initial_list))
newList = list(filter(lambda x: x % 2 == 0, initial_list))
reducedList = reduce(lambda x,y: x + y, initial_list)

print("Squared list ... {0}".format(squaredList))
print("Even list ...... {0}".format(newList))
print("Reduced list ... {0}".format(reducedList))
