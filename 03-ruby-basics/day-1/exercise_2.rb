def add_five(argument)
  argument + 5
end

def multiply_by_fifteen(argument)
  argument * 15
end

def operation(arg1, arg2, arg3, arg4, arg5)
  arg1 + arg2 + arg3 + arg4 + arg5
end

def operation_fancy(*arguments)
  arguments.inject(&:+)
end

def print_four_times(argument)
  for i in 0..3
    puts argument
  end
end

def print_upcase(argument)
  puts argument.upcase
end

puts add_five(10)
puts multiply_by_fifteen(10)
puts operation(1,2,3,4,5)

print_four_times("Orlando")
print_upcase("class")