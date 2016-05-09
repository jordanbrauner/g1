class CharactersEpisodes < ActiveRecord::Migration
  def change
    create_table :characters_episodes, :id => false do |t|
      t.integer :character_id, null: false
      t.integer :episode_id, null: false
    end
  end
end
