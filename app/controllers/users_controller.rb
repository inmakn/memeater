class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(user_params)
    @user.high_score = 0
    if @user.save
      session[:current_user] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  def destroy
    @user = User.new(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username,
                                 :password, :password_confirmation,
                                 :num_games_played,
                                 :high_score)
  end

end
