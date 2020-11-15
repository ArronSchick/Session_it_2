class AddClassroomRefToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :classroom, null: false, foreign_key: true
  end
end
