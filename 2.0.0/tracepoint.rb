#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

trace = TracePoint.new(:return) do |t|
  puts "#{t.method_id} has returned something."
end

def foo
  'bar'
end

# trace.enable
# foo
binding.pry
