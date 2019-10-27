class Post < ApplicationRecord
  belongs_to :user
  validates :description, length: { maximum: 1000 }, presence: true
end
