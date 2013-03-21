#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

infinity      = (0..Float::INFINITY)
infinite_enum = infinity.lazy.select { |num| num % 42 == 0 }

binding.pry
