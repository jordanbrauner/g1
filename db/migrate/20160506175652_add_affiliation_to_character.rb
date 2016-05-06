class AddAffiliationToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :affiliation, :string
  end
end
