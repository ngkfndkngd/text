class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = current_user
    @recipes = Recipe.where(user_id:current_user).order(created_at: :desc).page(params[:page]).per(7)
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
       flash.now[:alert] = '入力してください。'
       render "edit"
    end
  end
  
   private

    def user_params
        params.require(:user).permit(:name, :email, :introduction, :profile_image)  
    end
end
