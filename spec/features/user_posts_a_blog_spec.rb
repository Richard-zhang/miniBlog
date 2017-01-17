require 'rails_helper.rb'

feature 'User posts a blog' do
  scenario 'with valid input' do
    visit '/'
    # fill_form(:post, {text: 'My First Post'})
    fill_in 'post_text', with: 'My First Post'
    click_button 'Publish'
  end
end
