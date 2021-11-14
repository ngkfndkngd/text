class HomesController < ApplicationController
  def top
    @recipes = Recipe.all.order(created_at: :desc).limit(4)
  end
end
