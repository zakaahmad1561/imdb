class Movie < ApplicationRecord
    belongs_to :user
    has_rich_text :description
end
