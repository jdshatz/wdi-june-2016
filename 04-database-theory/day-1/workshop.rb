class User
  def initialize(attributes)

  end

  def self.find(id)
    sql_results_parser("select * from users where id = #{id}")
  end

  def self.where

  end

  def self.create_object(str)
    results = str.split("|")
    User.new
  end

  def self.sql_results_parser(command)
    result_string = `sqlite3 users.db "#{command}"`

    create_object(result_string)
  end
end







class User
  def self.create
  end
end


user = User.create
puts user.first_name
puts user.last_name

user = User.find(3)
puts user.first_name
puts user.last_name

user.destroy















