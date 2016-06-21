class User
  # invoked when creating a new object (User.new)
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # getter method
  def first_name
    @first_name
  end

  # setter method for first_name
  def first_name=(name)
    @first_name = name
  end

  # getter method for last_name
  def last_name
    @last_name
  end

  # setter method for last_name
  def last_name=(name)
    @last_name = name
  end

  # instance method
  # you can use instance variables within instance methods
  def full_name
    @first_name + " " + @last_name
  end

  # class method
  # using instance variables within class methods will give you errors
  def self.method_name
    puts "run a class method"
  end
end

user = User.new("Orlando", "C")
james_user = User.new("James", "Hwang")

puts user.inspect
puts james_user.inspect

# user = User.new
# user.first_name
# user.last_name

# puts user.first_name

# invoke the setter method for first_name
# user.first_name = "Jameson"

# puts user.first_name

# User.method_name


# puts user.full_name





