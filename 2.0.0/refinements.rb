#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

module HappyRainbowString
  refine String do
    def upcase
      %w{rainbows unicorns giggles hugs sugar_sprinkles}.sample.upcase
    end
  end
end

def before_refining(str)
  str.upcase
end

binding.pry

using HappyRainbowString

def after_refining(str)
  str.upcase
end

binding.pry
