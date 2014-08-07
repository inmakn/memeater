class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def edit
  end

  def update
  end

  def meme_params
    params.require(:meme).permit(:spritesheet)
  end

end
