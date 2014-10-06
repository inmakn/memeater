class HomeController < ApplicationController

  def index
    @games = Game.order(score: :desc).limit(10)
    render :index
  end

end
