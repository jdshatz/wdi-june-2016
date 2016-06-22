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

class SuperDog < Dog
  def initialize(name)
    super(name)
    @can_fly = true
  end
end


class Giraffe < Animal
  attr_accessor :neck_length

  def initialize(name)
    @name = name
    @type = "giraffe"
    @neck_length = 100
  end

  def grow_neck(neck_length)
    @neck_length += neck_length
  end
end

# giraffe = Giraffe.new("orlando")
# giraffe.grow_neck(20)
# puts giraffe.neck_length

class Lion < Animal
  def initialize(name)
    @name = name
    @type = "lion"
  end

  def roar
    puts "I am a lion and I am roaring"
  end
end

class Bear < Animal
  def initialize(name)
    @name = name
    @type = "bear"
  end

  def roar
    puts "I am a bear and I am roaring"
  end
end

# new_dog = Dog.new("fido")
# puts new_dog.inspect

# new_dog.break_legs(3)
# puts new_dog.inspect

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