class CreateUnicornsTable < ActiveRecord::Migration
  def change
    # stuff goes here
    create_table :unicorns do |table|
      table.string :name
    end
  end
end
