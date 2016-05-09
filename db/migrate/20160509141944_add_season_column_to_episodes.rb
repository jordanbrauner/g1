class AddSeasonColumnToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :season, :string
  end
end
