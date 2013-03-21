#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

module IncludeRangeExt
  refine Range do
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
end

def test_before(r)
  r.include?(2..3)
end

#(1..4).include?(2..3) # => false (default behavior)
binding.pry

# Now turn on the refinement:
using IncludeRangeExt

#(1..4).include?(2..3) # => true  (refined behavior)
binding.pry

def test_after(r)
  r.include?(2..3)
end


# test_after(1..4) # => true (defined after using, so refined behavior)
binding.pry

# But refined version happens only for calls defined after the using:
# test_before(1..4) # => false (defined before, not affected)
binding.pry
