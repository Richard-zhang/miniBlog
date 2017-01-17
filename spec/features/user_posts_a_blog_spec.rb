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
    fill_in 'post_text', with:@@too_big_post
    click_button 'Publish'
    page.should have_content 'Text must have at most 150 characters'
  end





  private
    @@too_big_post = 'Dont talk to me of love. Ive had an earful
And Iget tearful when Ive downed a drink or two.
Im one of your talking wounded.
Im a hostage. Im maroonded.
But Im in Paris with you.
Yes Im angry at the way Ive been bamboozled
And resentful at the mess Ive been through.
I admit Im on the rebound
And I dont care where are we bound.
Im in Paris with you.
Do you mind if we do not go to the Louvre
If we say sod off to sodding Notre Dame,
If we skip the Champs Elysées
And remain here in this sleazy
Old hotel room
Doi'
end
