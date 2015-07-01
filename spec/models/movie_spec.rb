require 'rails_helper'

describe Movie do
  describe '#avg_rating' do
    it 'will return an average of all of the ratings for the movie' do
      movie = Movie.create(title: "Con Air", description: "the one with a plane", release_date: "02/09/1995")
      rating_0 = Rating.new(rating: 3)
      rating_1 = Rating.new(rating: 10)
      movie.ratings.push(rating_0)
      movie.ratings.push(rating_1)
      expect(movie.avg_rating).to eq(6.5)
    end
  end
end
