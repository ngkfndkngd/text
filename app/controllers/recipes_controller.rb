class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.materials.build # #親モデル.子モデル.buildで子モデルのインスタンス作成
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save!
    redirect_to recipe_path(@recipe.id)
  end

  def index
    @recipes = Recipe.all.includes([:user]).page(params[:page]).per(8)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @review = Review.new
    @reviews = @recipe.reviews.all.includes([:user])
    
  end

  def edit
    @recipe = Recipe.find(params[:id])
    if @recipe.user != current_user
      redirect_to recipes_path
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe.id), notice: 'You have creatad book successfully.'
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :count, :description,:work, :recipe_image, :user_id, materials_attributes: [:id, :ingredient, :amount, :_destroy])
  end
end
