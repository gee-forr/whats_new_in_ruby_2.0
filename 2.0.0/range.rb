#!/usr/bin/env ruby

needle   = 7500
haystack = (1..1000000000000000000000)

puts haystack.bsearch { |i| i == needle }
