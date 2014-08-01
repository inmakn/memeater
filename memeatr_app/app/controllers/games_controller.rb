class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    if @game.save
      redirect_to gameframe_path
    else
      render :new
    end
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
