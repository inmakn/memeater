class EnvironmentsController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def character_params
    params.require(:environment).permit(:top_layer, :middle_layer, :bottom_layer)
  end

end
