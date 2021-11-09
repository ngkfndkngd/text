class HomesController < ApplicationController
  
  def top
    @recipes = Recipe.all.order(created_at: :desc).Limit(4)
  end
  
end