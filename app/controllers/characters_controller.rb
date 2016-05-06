class CharactersController < ApplicationController

  def index
    @characters = Character.all
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

  def edit
    @character = Character.find(params[:id])
  end

  def update
  end

  def destroy
    @character = Character.find(params[:id])
    if @character.destroy
      redirect_to characters_path
    end
  end

  private
    def character_params
      params.require(:character).permit(:name, :title, :bio, :image)
    end

end
