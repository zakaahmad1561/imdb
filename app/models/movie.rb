class Movie < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_rich_text :description
    has_many :pictures, as: :imageable
    accepts_nested_attributes_for :pictures
end
