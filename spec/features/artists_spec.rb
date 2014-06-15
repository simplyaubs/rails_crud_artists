require 'spec_helper'

feature 'CRUD artists' do
  scenario 'User can see welcome on homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end