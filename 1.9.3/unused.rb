#!/usr/bin/env ruby

def say_hello
  hello, world = 'hello, world'.split(', ') # This will throw an compiler warning because hello is not used
  _, world     = 'hello, world'.split(', ') # When the _ variable is not used, it doesnt trigger the compiler warning
  world
end
