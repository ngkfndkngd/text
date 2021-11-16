class ReviewsController < ApplicationController
  def create
    review = Review.new(review_params)
    review.save
    @reviews = Recipe.find(params[:recipe_id]).reviews.all.includes([:user])
    # app/views/review/create.js.erbを参照する
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    review = @recipe.reviews.find(params[:id])
    review.destroy
    @reviews = @recipe.reviews.all.includes([:user])
  end

  private

  def review_params
        params.require(:review).permit(:comment,:review_image).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end