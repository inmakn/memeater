class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    # @memes = Meme.all
    # @character = Character.find(2)
  end

  def new
    @game = Game.new
    @characters = Character.all
    @environments = Environment.all
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.score = 0

    active_memes = []
    Meme.where('level <= ?', @game.level).each {|meme| active_memes.push(meme) }
    active_memes.each {|meme| @game.memes.push(meme) }

<<<<<<< HEAD
      if @game.user.num_games_played > 7
=======
      if @game.user.games.length > 7
>>>>>>> feature
          @game.level = 3
      elsif @game.user.games.length > 3
          @game.level = 2
      else
          @game.level = 1
      end

    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      render json: @game
    else
      render :edit
    end
  end

  private
  def game_params
    params.require(:game).permit(:character_id, :environment_id, :score)
  end

end
