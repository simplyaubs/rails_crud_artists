require 'spec_helper'

feature 'CRUD artists' do
  scenario 'User can create a list of artists' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add an artist'
    fill_in 'Name', with: 'Michael Jackson'
    fill_in 'Album', with: 'Thriller'
    click_on 'Add artist'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Thriller'
  end
end