class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @userrecipes = Recipe.where(user_id: @user.id)
    @recipes = Recipe.where(user_id: current_user).order(created_at: :desc).page(params[:page]).per(12)
    @favorites = Favorite.where(user_id: current_user.id).includes([:recipe])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      flash.now[:alert] = '名前を入力してください。'
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :profile_image)
  end
end
