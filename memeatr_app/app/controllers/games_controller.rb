class GamesController < ApplicationController

  def new
    @game = Game.new
    @user = current_user
  end

  def create
    @game = Game.new
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def show
    # @game = Game.find(params[:id])
    # @memes = []
    #
    # @meme_spritesheets

    @memes = Meme.all
    @character = Character.find(2)
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

end
