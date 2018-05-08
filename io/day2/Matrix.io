List dim := method(x, v,
    l := list(); x repeat(l append(v clone)); l
)

Matrix := Object clone
Matrix content := nil
Matrix print := method(self content print)

Matrix dim := method(x, y,
    self content = List dim(y, List dim(x, 0))
    self
)

Matrix set := method(x, y, value,
    self content at(y) atPut(x, value)
)

Matrix get := method(x, y,
    self content at(y) at(x)
)

s := Matrix dim(2, 3)
s println

s set(1, 2, 1)
s println

s get(1, 2) println
s get(1, 0) println
