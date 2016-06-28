class CreatePiratesTable < ActiveRecord::Migration
  def change
    create_table :pirates do |table|
      table.string :fname
      table.string :lname
      table.datetime :bday
    end
  end
end
