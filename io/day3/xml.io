n := 0

Builder := Object clone

Builder forward := method(
    n repeat(write("\t"))
    writeln("<", call message name, ">")
    n = n + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg, n);
        if(content type == "Sequence", n repeat(write("\t")); writeln(content))
    )
    n = n - 1
    n repeat(write("\t"))
    writeln("</", call message name, ">")
)

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript")
)
