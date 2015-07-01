class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
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

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:notice] = "Movie updated, Nick thanks you."
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end


private
  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :release_date)
  end
end
