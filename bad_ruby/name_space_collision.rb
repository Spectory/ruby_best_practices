require 'ap'
require './bad_ruby/modules/bad_namespace'
require './bad_ruby/modules/bad_namespace_too'
include A
include B

# this constant is overridden, it depends on the require order

puts '#' * 50
ap SOME_CONST
puts '#' * 50
