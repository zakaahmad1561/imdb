class Movie < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    has_rich_text :description
    has_many :pictures, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :pictures
end
