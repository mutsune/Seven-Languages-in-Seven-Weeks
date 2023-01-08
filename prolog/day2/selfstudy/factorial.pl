factorial(1, 0).
factorial(Result, N) :- Pred is N - 1, factorial(PredResult, Pred), Result is N * PredResult.
