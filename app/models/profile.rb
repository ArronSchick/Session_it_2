class Profile < ApplicationRecord
    belongs_to :user
    has_one :classroom, dependent: :destroy
    has_one_attached :picture
end
