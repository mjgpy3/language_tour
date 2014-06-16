module FizzBuzz where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy x = ((==) 0) . (mod x)

separate :: String -> String -> String -> String
separate sep a b  = a ++ sep ++ b

join :: [String] -> String -> String
join xs sep = drop 1 $ foldl (separate sep) [] xs

score :: Integer -> String
score a
  | divBy3 && divBy5 = "FizzBuzz"
  | divBy3           = "Fizz"
  | divBy5           = "Buzz"
  | otherwise        = show a
  where
    divBy3 = a `divisibleBy` 3
    divBy5 = a `divisibleBy` 5

-- main = print $ [score i | i <- [1..100]]
main = putStrLn $ join [score i | i <- [1..100]] "\n"
