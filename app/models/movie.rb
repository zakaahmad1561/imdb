class Movie < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    has_rich_text :description
    has_many :pictures, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :pictures
    enum :status, %i(draft published archived trashed)
    after_initialize :set_default_status, :if => :new_record?
    def set_default_status
        self.status ||= :draft
    end
end
