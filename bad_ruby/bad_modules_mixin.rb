require './bad_ruby/modules/bad_ruby'
# just require doesnt load the functions... I'll just use include...
include JohnnyBravo
say_hello

# now I need some functions from BunnyBranvo
require './bad_ruby/modules/bad_ruby_too'
include BunnyBranvo
BunnyBranvo.say_hello

dance

# crap, say_hello function was overwitten...
say_hello