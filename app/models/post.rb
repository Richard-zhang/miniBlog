class Post < ApplicationRecord
  validates_presence_of :text, message: 'must not be empty'
  validates_length_of :text, maximum: 150, too_long: 'must have at most 150 characters'
end
