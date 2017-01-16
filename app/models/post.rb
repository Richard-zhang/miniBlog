class Post < ApplicationRecord
  validates :text, presence: { message: 'must not be empty' },
                   length: {
                             maximum: 150,
                             too_long: 'must have at most 150 characters'
                            }
end
