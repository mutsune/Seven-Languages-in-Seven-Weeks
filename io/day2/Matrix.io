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

Matrix trans := method(
    org := self content clone
    yMax := org size
    xMax := org at(0) size
    Matrix dim(yMax, xMax)
    for(y, 0, yMax - 1,
        for(x, 0, xMax - 1,
            self set(y, x, org at(y) at(x))
        )
    )
    self
)

matrix := Matrix dim(2, 3)
matrix println

matrix set(1, 1, 1)
matrix println

matrix get(1, 0) println
matrix get(1, 1) println

"====" println

org_matrix := matrix content clone

new_matrix := matrix trans
new_matrix println

matrix := Matrix clone
matrix content = org_matrix
matrix println
