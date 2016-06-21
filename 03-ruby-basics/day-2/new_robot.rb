class Robot
  def robotName
    @robotName = "ROBO"
  end
​
  def robotName=(newName)
    @robotName  = newName
  end
end
​
robot = Robot.new
puts robot.robotName
robot.robotName = "HUMAN"
puts robot.robotName