class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
  end

  def update
  end

  def character_params
    params.require(:character).permit(:spritesheet)
  end

end
