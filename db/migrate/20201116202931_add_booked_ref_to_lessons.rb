class AddBookedRefToLessons < ActiveRecord::Migration[6.0]
  def change
    add_reference :lessons, :booked, null: false, foreign_key: true
  end
end
