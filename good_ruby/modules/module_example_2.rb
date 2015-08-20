
# prefer 'function_modules' over 'extend self'
module Math2
  module_function

  def abs(x)
    return [x, -x].max
  end
end
