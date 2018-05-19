n := 0

Builder := Object clone

Builder forward := method(
    n repeat(write("\t"))
    n = n + 1
    args := call message arguments
    # first argument
    first := args at(0)
    keyValues := if(first asSimpleString exSlice(0, 13) == "curlyBrackets", args = args slice(1); " " .. doMessage(first) toString, "")
    writeln("<", call message name, keyValues, ">")
    # rest args
    args foreach(arg,
        content := self doMessage(arg, n);
        if(content type == "Sequence", n repeat(write("\t")); writeln(content))
    )
    n = n - 1
    n repeat(write("\t"))
    writeln("</", call message name, ">")
)

OperatorTable addAssignOperator(":", "atPutHash")
curlyBrackets := method(
    r := Map clone
    call message arguments map(arg,
        r doString(arg asString)
    )
    r
)
Map atPutHash := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)
Map toString := method(
    self map(k, v, "#{k}=#{v}" interpolate) join(" ")
)

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript"),
    book({"author": "Tate", "title": "Foo"}, "Bar"),
    div()
)
