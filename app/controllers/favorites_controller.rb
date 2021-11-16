class FavoritesController < ApplicationController
  def index
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.new(user_id: current_user.id)
    if @favorite.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.find_by(user_id: current_user.id)
    if @favorite.present?
       @favorite.destroy
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end
end

# (モデル.present?)変数の値が存在するか、しないかによって後続の処理を変更