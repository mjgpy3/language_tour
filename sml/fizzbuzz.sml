fun fizzbuzz (num) =
  case (num mod 3, num mod 5) of
      (0, 0) => "FizzBuzz"
    | (0, _) => "Fizz"
    | (_, 0) => "Buzz"
    | _ => Int.toString num

fun join_over (s, e, f) =
  f (s) ^ (if s=e then "" else "\n" ^ join_over (s+1, e, f));

print (join_over (1, 100, fizzbuzz));
