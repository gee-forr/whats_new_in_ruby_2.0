#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

class KWArgExample
  def crazy_method(pos_req_1, pos_req_2,
                   pos_opt_1 = "42", pos_opt_2 = pos_opt_1.upcase,
                   *rest_of_pos_args,
                   named_1: 'hello', named_2: ['an', 'array'], named_3: a_method(named_1, needed_2),
                   **rest_of_kwargs,
                   &block
                  )
  end

  def a_method(a, b)
    # ...
  end
end

binding.pry
#ap KWArgExample.instance_method(:crazy_method).parameters
