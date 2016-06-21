class Dog
  # attr_reader :genus
  # attr_writer :genus
  attr_accessor :genus

  def initialize
    @genus = "terrier"
  end
end

new_dog = Dog.new
# new_dog.genus = "pit bull"
puts new_dog.genus