class ReviewsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    
    @review = @recipe.reviews.create(review_params)
    redirect_to recipes_path(@recipe)
  end
 
  private
    def review_params
      params.require(:review).permit(:body,:chef_id,:recipe_id)
    end
end