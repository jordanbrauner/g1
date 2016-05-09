class CharactersController < ApplicationController

  def index
    @characters = Character.all.order(:name)
    @autobots = Character.where(affiliation: 'Autobot').order(:name)
    @dinobots = Character.where(affiliation: 'Dinobot').order(:name)
  end

  def show
    @character = Character.find(params[:id])
    @miniseries = Episode.where(season: 'Miniseries').order(:episode)
    @seasonOne = Episode.where(season: '1').order(:episode)
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update!(character_params)
      redirect_to @character
    else
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    if @character.destroy
      redirect_to characters_path
    end
  end

  private
    def character_params
      params.require(:character).permit(:name, :title, :bio, :affiliation, :image)
    end

end
