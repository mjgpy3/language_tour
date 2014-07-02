package main

import (
    "fmt"
    "strconv"
)

func divisibleBy(num int, den int) bool {
    return num % den == 0
}

type Rule struct {
    Divisor int
    WackyPhrase string
}

func fizzBuzz(start int, end int, rules []Rule) {
    for i := start; i <= end; i += 1 {
        printMe := ""

        for _, rule := range rules {
            if divisibleBy(i, rule.Divisor) {
                printMe += rule.WackyPhrase
            }
        }

	if printMe == "" {
            printMe = strconv.Itoa(i)
        }
        fmt.Println(printMe)
    }
}

func main() {
    rules := []Rule{
        Rule{ Divisor: 3, WackyPhrase: "Fizz" },
        Rule{ Divisor: 5, WackyPhrase: "Buzz" }}

    fizzBuzz(1, 100, rules)
}
