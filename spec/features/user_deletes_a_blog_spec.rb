require 'rails_helper.rb'

feature 'User deleting a blog' do
  scenario 'will show a message' do
    visit '/'
    fill_in 'post_text', with: 'My First Post'
    click_button 'Publish'
    click_link('Delete')
    # page.driver.browser.switch_to.alert.accept
    page.should have_content 'The post has been deleted'
  end
end
