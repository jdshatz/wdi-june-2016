class Robot
  def compute
    puts "kill"
  end

  def self.destroy_humanity
    puts "I kill"
  end
end

brand_new_robot = Robot.new

Robot.destroy_humanity
brand_new_robot.compute