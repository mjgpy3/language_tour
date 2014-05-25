#!/usr/bin/env ruby

(1..100).each do |x|
  phrase = (x%3 == 0 ? 'Fizz' : '')
  phrase += 'Buzz' if x%5 == 0
  puts (phrase.empty? ? x : phrase)
end
