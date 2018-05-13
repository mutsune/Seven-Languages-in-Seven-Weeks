standardInput := File standardInput()

RandomGame := Object clone
RandomGame targetValue := nil
RandomGame prev := nil
RandomGame compPrev := method(input,
    if(self prev != nil and (self targetValue - input) ** 2 < (self targetValue - self prev) ** 2) then("you are approaching" println)
    self prev = input
)
RandomGame bingo := method("bingo!" println)
RandomGame start := method(
    self targetValue = Random value(1, 101) floor
    10 repeat(
        input := standardInput readLine() asNumber
        if(input == targetValue) then(bingo(); break) else(compPrev(input))
    )
)

RandomGame start()
