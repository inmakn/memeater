class GameframesController < ApplicationController

  def show
    @gameframe = Gameframe.find(params[:id])
  end

end
