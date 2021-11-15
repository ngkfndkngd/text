class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    # @review.recipe_id = params[:recipe_id]
    respond_to do |format|
      if @review.save
        format.html { render_back(fallback_location: root_path) }
        format.js    # create.js.erbが呼び出される
      else
        format.html { render_back(fallback_location: root_path) }
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @review = current_user.review.find_by(recipe_id: @recipe.id)
    @review.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
        params.require(:review).permit(:comment,:review_image).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
