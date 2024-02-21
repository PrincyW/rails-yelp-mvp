class ReviewsController < ApplicationController
  # def index
  # end

  # def show
  # end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to new_restaurant_review_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to root_path, status: :see_other
  end
end
