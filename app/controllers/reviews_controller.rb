class ReviewsController < ApplicationController

  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie][:id])
    @review = Review.new(review_params)
    if @review.save
      @movie.reviews.push(@review)
      flash[:notice] = "Review added, Nick thanks you."
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(movie_params)
      flash[:notice] = "Review updated, Nick thanks you."
      redirect_to movie_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:alert] = "Nick is really disappointed in you for deleting this :("
    redirect_to movies
  end

private
  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
