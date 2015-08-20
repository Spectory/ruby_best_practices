
# don't use both define function on different scopes
module A
  def a
    puts 'a'
  end

  # this function can never be called after mixin
  def self.bad_func
    puts 'at A'
  end
end

module B
  def b
    puts 'b'
  end
end

# merge both into a now class
class ABmix
  include A
  include B
end

abm = ABmix.new
abm.a
abm.b
abm.bad_func # raises error
