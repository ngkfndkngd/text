class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @recipes = @tag.recipes.all.includes([:user]).order(created_at: :desc).page(params[:page]).per(8)
  end
  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
