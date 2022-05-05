class Movie < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_rich_text :description
end
