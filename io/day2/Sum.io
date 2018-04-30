l := list(list(0, 1, 2, 3, 4), list(5, 6, 7, 8, 9))

sum := 0
for(i, 0, l size - 1, sum = sum + l at(i) sum)

sum println
