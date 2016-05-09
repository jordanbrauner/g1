class EpisodesController < ApplicationController

  def index
    @miniseries = Episode.where(season: 'Miniseries').order(:episode)
    @seasonOne = Episode.where(season: '1').order(:episode)
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def episode_params
      params.require(:episode).permit(:name, :season, :episode)
    end

end
