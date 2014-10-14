(use '[clojure.string :only (join)])

(defn div-by [a b] (= (mod a b) 0))

(defn calc-fizzbuzz [n]
  (if (and (div-by n 3) (div-by n 5))
    "FizzBuzz"
    (if (div-by n 3)
      "Fizz"
      (if (div-by n 5)
        "Buzz"
        (str n)))))

(println (join "\n" (map calc-fizzbuzz (range 1 101))))
