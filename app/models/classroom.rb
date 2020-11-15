class Classroom < ApplicationRecord
    has_many :reviews
    has_many :lessons
    belongs_to :profile
end
