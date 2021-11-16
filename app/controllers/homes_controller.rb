class HomesController < ApplicationController
  def top
    @recipes = Recipe.all.includes([:user]).order(created_at: :desc).limit(4)
    @recipe_ranks = Recipe.find(Favorite.group(:recipe_id).order('count(recipe_id) desc').limit(4).pluck(:recipe_id))
  end
end
