
# notice module function are not on self...
module A
  def a
    puts 'a'
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
