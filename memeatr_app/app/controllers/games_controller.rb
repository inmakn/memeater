class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @memes = []
    
    # if current_user.num_games_played > 7
    #   memes_to_display = Meme.where('level <= ?' 3)
    #   memes_to_display.each do |meme|
    #     @memes.push(meme.avatar)
    #   end
    # elsif current_user.num_games_played > 3
    #   memes_to_display = Meme.where('level <= ?' 2)
    #   memes_to_display.each do |meme|
    #     @memes.push(meme)
    #   end
    # else
    #   memes_to_display = Meme.where(level: 1)
    #   memes_to_display.each do |meme|
    #     @memes.push(meme)
    #   end3
    # end
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
