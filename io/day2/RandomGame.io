standardInput := File standardInput()

RandomGame := Object clone
RandomGame targetValue := nil
RandomGame prev := nil
RandomGame compPrev := method(input,
    if (self prev != nil) then(
        crnt_distance := (self targetValue - input) ** 2
        prev_distance := (self targetValue - self prev) ** 2
        if(crnt_distance < prev_distance) then("you are approaching" println) elseif(crnt_distance > prev_distance) then("you are going away" println)
    )
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
