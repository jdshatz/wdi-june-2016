class AddSkinToneToUnicorns < ActiveRecord::Migration
  def change
    # stuff goes here
    add_column :unicorns, :skin_tone, :string
  end
end
