class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates :description, length: { maximum: 1000 }, presence: true
end
