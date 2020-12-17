class ReviewsController < ApplicationController
  before_action :set_doll

  def create
    @review = Review.new(review_params)
    @review.doll = @doll
    @review.user = current_user
    respond_to do |format|
      if @review.save
        format.js { }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_doll
    @doll = Doll.find(params[:doll_id])
  end
end
