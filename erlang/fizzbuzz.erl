-module(fizzbuzz).

calculate([]) -> "";
calculate([X|Xs]) when (X rem 3 == 0) and (X rem 5 == 0) -> "FizzBuzz\n" ++ calculate(Xs);
calculate([X|Xs]) when X rem 3 == 0 -> "Fizz\n" ++ calculate(Xs);
calculate([X|Xs]) when X rem 5 == 0 -> "Buzz\n" ++ calculate(Xs);
calculate([X|Xs]) -> integer_to_list(X) ++ "\n" ++ calculate(Xs).

main(_) -> io:format(calculate(lists:seq(1, 100))).
