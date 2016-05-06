class CharactersController < ApplicationController

  def index
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
  end

  def create
    @character = Character.new(character_params)

    @character.save
    redirect_to @character
  end

  private
    def character_params
      params.require(:character).permit(:name, :title, :bio)
    end

end
