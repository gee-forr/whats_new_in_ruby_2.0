#!/usr/bin/env ruby
# Code example taken from http://blog.marc-andre.ca/2013/02/23/ruby-2-by-example/

require 'pry'
require 'awesome_print'

module IncludeRangeExt
  # Extends the default Range#include? to support range comparisons.
  def include?(value)
    if value.is_a?(::Range)
      # 1...10 includes 1..9 but it does not include 1..10.
      operator = exclude_end? && !value.exclude_end? ? :< : :<=
      super(value.first) && value.last.send(operator, last)
    else
      super
    end
  end
end

class Range
  prepend IncludeRangeExt
end

# Range.ancestors
binding.pry

