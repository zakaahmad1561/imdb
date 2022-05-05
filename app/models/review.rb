class Review < ApplicationRecord
  validates :rating, presence: true, length: { in: 1..5 }
  has_rich_text :review
  belongs_to :user
  belongs_to :movie
end
