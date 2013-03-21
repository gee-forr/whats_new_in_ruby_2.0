#!/usr/bin/env ruby

require 'pry'
require 'awesome_print'

Groceries    = Struct.new(:dairy, :food, :toiletries)
grocery_list = Groceries.new('Milk', ['Meat', 'Fruit'], 'Deo')

# ap grocery_list.to_h
binding.pry
