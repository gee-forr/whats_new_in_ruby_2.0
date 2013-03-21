#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

needle   = 7500
haystack = (1..1000000000000000000000)

puts haystack.include? needle
