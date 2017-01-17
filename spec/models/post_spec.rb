require 'rails_helper'

# RSpec.describe Post, :type => :model do
#   it "is valid with valid attributes"
#   it "is not valid if the post is empty"
#   it "is not valid if the length of post is greater than 150"
# end

RSpec.describe Post, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:text).with_message('must not be empty') }
    m = 'must have at most 150 characters'
    it { should validate_length_of(:text).is_at_most(150).with_long_message(m) }
  end
end
