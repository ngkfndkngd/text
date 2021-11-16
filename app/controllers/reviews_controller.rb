class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save
    # app/views/review/create.js.erbを参照する
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
    @review.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
        params.require(:review).permit(:comment,:review_image).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end