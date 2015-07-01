require 'rails_helper'

describe 'The adding movies path' do
  it 'will let the user add a movie, will display the movie on the movies index' do
    visit new_movie_path
    fill_in 'movie_title', with: 'Con Air'
    fill_in 'movie_description', with: 'The one on the plane'
    fill_in 'movie_release_date', with: '01/05/1995'
    click_on 'Create Movie'
    expect(page).to have_content('Con Air')
  end

  it 'will return an error if a field is left empty' do
    visit new_movie_path
    fill_in 'movie_title', with: 'Con Air'
    fill_in 'movie_release_date', with: '01/05/1995'
    click_on 'Create Movie'
    expect(page).to have_content('Please fix these errors')
  end
end
