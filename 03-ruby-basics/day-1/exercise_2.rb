# creates a new method/function named add_five
#   that accepts one argument and adds 5 to it
def add_five(argument)
  argument + 5
end

# creates a new method named multiply_by_fifteen
#   that accepts one argument and multiplies it by 15
def multiply_by_fifteen(argument)
  argument * 15
end

# takes all five arguments and adds them together
def operation(arg1, arg2, arg3, arg4, arg5)
  arg1 + arg2 + arg3 + arg4 + arg5
end

# this does the same as above except it uses
#   some special ruby syntax
def operation_fancy(*arguments)
  arguments.inject(&:+)
end

# displays whatever is passed in as argument 4 times
#   in the terminal
def print_four_times(argument)
  for i in 0..3
    puts argument
  end
end

# takes the text passed into the method and
#   returns an uppercase value
def print_upcase(argument)
  puts argument.upcase
end

puts add_five(10) # returns 15
puts multiply_by_fifteen(10) # returns 150
puts operation(1,2,3,4,5) # returns 15

print_four_times("Orlando") # displays "Orlando" four times in the terminal
print_upcase("class") # displays CLASS in the terminal