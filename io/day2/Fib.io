fib := method(n,
    if(n == 0) then(return 0) elseif(n == 1) then(return 1) else(return fib(n - 2) + fib(n - 1))
)

fib(1) println
fib(4) println
