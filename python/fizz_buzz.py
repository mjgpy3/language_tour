#!/usr/bin/env python

print '\n'.join((not i%3)*'Fizz' + (not i%5)*'Buzz' or str(i) for i in xrange(1, 101))
