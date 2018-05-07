List myAverage := method(
    if(self select(x, x type != "Number") size == 0) then(return self sum / self size) else(Exception raise("There are non-numeric values in a list"))
    )

l := list(0, 1, 2)
l myAverage println

l := list(0, 1, "a")
l myAverage
