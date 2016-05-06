class AddImageToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :image, :string, required: true
  end
end
