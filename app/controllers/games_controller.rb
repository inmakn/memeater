class GamesController < ApplicationController

  before_action :authenticate?, only: [:show, :new]

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

    if @game.user.games.length > 10
      @game.level = 3
    elsif @game.user.games.length > 5
      @game.level = 2
    else
      @game.level = 1
    end

    active_memes = []
    Meme.where('level <= ?', @game.level).each {|meme| active_memes.push(meme) }
    active_memes.each {|meme| @game.memes.push(meme) }

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
    end
  end

  private
  def game_params
    params.require(:game).permit(:character_id, :environment_id, :score)
  end

end
