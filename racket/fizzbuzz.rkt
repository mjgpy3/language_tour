#lang racket

(define (div-by? n d)
  (zero? (remainder n d)))

(define (fizzbuzz-val v)
  (cond [(div-by? v 15) "FizzBuzz"]
	[(div-by? v 3) "Fizz"]
	[(div-by? v 5) "Buzz"]
	[else (number->string v)]))

(define one-to-one-hundred
  (for/list ([k (in-range 100)]) (+ 1 k)))

(display (string-join (map fizzbuzz-val one-to-one-hundred) "\n"))
