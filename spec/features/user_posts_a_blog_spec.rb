require 'rails_helper.rb'

feature 'User posts a blog' do
  scenario 'with valid input' do
    visit '/'
    fill_in 'post_text', with: 'My First Post'
    click_button 'Publish'
  end

  scenario 'with empty input' do
    visit '/'
    fill_in 'post_text', with: ''
    click_button 'Publish'
    page.should have_content 'Text must not be empty'
  end

  scenario 'with input greater than 150' do
    visit '/'
    fill_in 'post_text', with: '0' * 151
    click_button 'Publish'
    page.should have_content 'Text must have at most 150 characters'
  end
end
