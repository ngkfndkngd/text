class HomesController < ApplicationController
  def top
    @recipes = Recipe.all.includes([:user]).order(created_at: :desc).limit(4)
  end
end
