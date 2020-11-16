class Booked < ApplicationRecord
    has_many :lessons
    belongs_to :profile
end
