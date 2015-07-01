class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "Movie added, Nick thanks you."
      redirect_to movies_path
    else
      render :new
    end
  end

private
  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :release_date)
  end
end
