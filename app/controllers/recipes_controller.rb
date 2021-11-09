class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to recipe_path(@recipe.id)
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def recipe_params
    params.require(:recipe).permit(:name, :count, :description, :recipe_image, :user_id,)
  end 
  
end
