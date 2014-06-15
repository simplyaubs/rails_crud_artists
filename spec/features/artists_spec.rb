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

  scenario 'User can update an artist' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add an artist'
    fill_in 'Name', with: 'Michael Jackson'
    fill_in 'Album', with: 'Thriller'
    click_on 'Add artist'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Thriller'
    click_on 'Michael Jackson'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Thriller'
    click_on 'Edit'
    fill_in 'Name', with: 'Van Morrison'
    fill_in 'Album', with: 'Into the Music'
    click_on 'Update artist'
    expect(page).to have_content 'Van Morrison'
    expect(page).to have_content 'Into the Music'
    expect(page).to_not have_content 'Michael Jackson'
    expect(page).to_not have_content 'Thriller'
  end

  scenario 'User can delete an artist' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add an artist'
    fill_in 'Name', with: 'Michael Jackson'
    fill_in 'Album', with: 'Thriller'
    click_on 'Add artist'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Thriller'
    click_on 'Michael Jackson'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'Thriller'
    click_on 'Delete'
    expect(page).to_not have_content 'Michael Jackson'
    expect(page).to_not have_content 'Thriller'
  end
end