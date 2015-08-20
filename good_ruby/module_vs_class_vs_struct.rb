require 'ap'

# Classes are about boxing a behavior
#
# - use class to pack depended functionality.
#
# for example functionality that requires initialization 
#
#   - File (requires a path)
#   - Generator (requires loading a configuration)
#

# OOP class
class Dog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def bark
    puts "#{name}: Woff Woff".green
  end
end

# Functional class
class DogNamePicker
  DEFUALT_NAMES = %w(doby lassie)

  def initialize(names_file = nil)
    if names_file
      @names = File.read names_file
    else
      @names = DEFUALT_NAMES
    end
  end

  def pick
    return @names.sample
  end
end

# Modules are about pure functionality.
#
# - use modules to create libraries.
# - you can pack in functions, consts, classes & other modules.
# - for example, Math (has consts like PI, and functions like abs and such)
#
module MyMath
  def self.pw(n)
    return n**2
  end
end

# Struct are about packing data
#
# - use to pack pure data, only getters & setters.
Struct.new('Cat', :name)

#--------------------------------------------------------------------------------

def class_example
  doby = Dog.new('doby')
  lassie = Dog.new('lassie')
  doby.bark
  lassie.bark

  puts '- ' * 25

  picker = DogNamePicker.new
  puts "picked: #{picker.pick}".yellow
end

def module_example
  ap MyMath.pw(7)
end

def struct_example
  mitzi = Struct::Cat.new('mitzi')
  ap mitzi
end

puts ['-' * 50, 'class_example', '-' * 50].join(' ')
class_example
puts ['-' * 50, 'module_example', '-' * 50].join(' ')
module_example
puts ['-' * 50, 'struct_example', '-' * 50].join(' ')
struct_example
