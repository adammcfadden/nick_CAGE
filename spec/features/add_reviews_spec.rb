require 'rails_helper'

describe 'The adding reviews path' do
  it 'will let the user add a review to a movie, will display the reviews on the movie page' do
    movie = Movie.create(title: "Con Air", description: "the one with a plane", release_date: "02/09/1995", rating: "8")
    visit movie_path(movie)
    click_on "Review Con Air"
    expect(page).to have_content 'Add a New Review to Con Air'
    fill_in "review_body", with: "Nick Cage is Aaaaamazing"
    fill_in "review_rating", with: "9"
    click_on "Create Review"
    expect(page).to have_content 'Nick Cage is Aaaaamazing'
  end

  it 'will return an error if a field is left empty' do
    movie = Movie.create(title: "Con Air", description: "the one with a plane", release_date: "02/09/1995", rating: "8")
    visit movie_path(movie)
    click_on "Review Con Air"
    expect(page).to have_content 'Add a New Review to Con Air'
    fill_in "review_rating", with: "9"
    click_on "Create Review"
    expect(page).to have_content 'errors'
  end
end
