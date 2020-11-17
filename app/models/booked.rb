class Booked < ApplicationRecord
    belongs_to :profile
    belongs_to :lesson
end
