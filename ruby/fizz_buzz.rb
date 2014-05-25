#!/usr/bin/env ruby

class Fixnum
  def divisible_by?(other)
    self % other == 0
  end

  def to_fizzbuzz
    [three_value, five_value].join('')
  end

  private

  def three_value
    div_by_returns(3, 'Fizz')
  end

  def five_value
    div_by_returns(5, 'Buzz')
  end

  def div_by_returns(num, value)
    divisible_by?(num) ? value : ''
  end
end

class String
  def if_its_not_empty_otherwise(other)
    empty? ? other : self
  end
end

def fizzbuzz_of(num)
  num.to_fizzbuzz.if_its_not_empty_otherwise(num)
end

(1..100).each do |x|
  puts fizzbuzz_of(x)
end
