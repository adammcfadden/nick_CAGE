require 'rails_helper'

describe 'The editing and deleting movies path' do
  it 'will let the user edit a movie' do
    visit new_movie_path
    fill_in 'movie_title', with: 'Con Air'
    fill_in 'movie_description', with: 'The one on the plane'
    fill_in 'movie_release_date', with: '01/05/1995'
    fill_in 'movie_rating', with: '5'
    click_on 'Create Movie'
    click_on 'Con Air'
    click_on 'Edit'
    fill_in 'movie_title', with: 'The Awesome Con Air'
    fill_in 'movie_description', with: 'The one on the plane and Nick Cage being Awesome'
    expect(page).to have_content('The Awesome Con Air')
    expect(page).to have_content('The one on the plane and Nick Cage being Awesome')
  end

  # it 'will return an error if a field is left empty' do
  #   visit new_movie_path
  #   fill_in 'movie_title', with: 'Con Air'
  #   fill_in 'movie_release_date', with: '01/05/1995'
  #   fill_in 'movie_rating', with: '5'
  #   click_on 'Create Movie'
  #   expect(page).to have_content('Please fix these errors')
  # end
end
