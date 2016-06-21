class Animal
  attr_accessor :type, :legs, :name

  def initialize(type, legs, name)
    @type = type
    @legs = legs
    @name = name
  end

  def break_legs(num_of_legs_to_break)
    @legs = @legs - num_of_legs_to_break
  end
end

class Dog < Animal
  def initialize(name)
    @type = "dog"
    @legs = 4
    @name = name
  end
end

new_dog = Dog.new("fido")
puts new_dog.inspect

new_dog.break_legs(3)
puts new_dog.inspect




# elephant = Animal.new("elephant", 4, "elefante")
# cat = Animal.new("cat", 4, "catus")
# dog = Animal.new("human", 2, "Orlando")

# puts "legs: " + elephant.legs.to_s
# puts "type: " + elephant.type
# puts "name: " + elephant.name

# elephant.legs = 3
# elephant.name = "fluffy"
# elephant.type = "dog"

# elephant.break_legs(2)

# puts "legs: " + elephant.legs.to_s
# puts "type: " + elephant.type
# puts "name: " + elephant.name