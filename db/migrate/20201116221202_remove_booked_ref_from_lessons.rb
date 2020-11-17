class RemoveBookedRefFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lessons, :booked, null: false, foreign_key: true
  end
end
