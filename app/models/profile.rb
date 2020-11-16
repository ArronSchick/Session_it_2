class Profile < ApplicationRecord
    belongs_to :user
    has_one :classroom
    has_many :reviews
    has_one_attached :picture
end
