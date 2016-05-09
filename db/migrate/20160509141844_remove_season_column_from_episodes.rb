class RemoveSeasonColumnFromEpisodes < ActiveRecord::Migration
  def change
    remove_column :episodes, :season
  end
end
