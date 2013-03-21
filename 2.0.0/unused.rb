#!/usr/bin/env ruby

def say_hello
  hello, world  = 'hello, world'.split(', ') # This will throw a compiler warning because hello is not used
  _, world      = 'hello, world'.split(', ') # An unused _ variable will not trigger a compiler warning
  _hello, world = 'hello, world'.split(', ') # A variable prepended with _ will also not trigger a compiler warning
  world
end
