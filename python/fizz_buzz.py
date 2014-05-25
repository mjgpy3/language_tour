#!/usr/bin/env python

for i in xrange(1, 101):
    print_me = ''
    if not i%3: print_me = 'Fizz'
    if not i%5: print_me += 'Buzz'
    if not print_me: print_me = i

    print(print_me)
