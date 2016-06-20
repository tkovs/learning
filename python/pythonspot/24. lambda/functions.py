list = [1,2,3,4,5,6,7,8,9,10]

squaredList = map(lambda x: x*x, list)
newList = filter(lambda x: x % 2 == 0, list)
reducedList = reduce(lambda x,y: x + y, list)

print("Squared list ... {0}".format(squaredList))
print("Even list ...... {0}".format(newList))
print("Reduced list ... {0}".format(reducedList))