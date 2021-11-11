class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.materials.build ##親モデル.子モデル.buildで子モデルのインスタンス作成
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save!
    redirect_to recipe_path(@recipe.id)
  end

  def index
    @recipes = Recipe.page(params[:page]).per(8)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :count, :description, :recipe_image, :user_id, materials_attributes: [:id, :ingredient, :amount, :_destroy])
  end

end
