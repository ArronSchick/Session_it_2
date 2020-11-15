class AddClassroomRefToLessons < ActiveRecord::Migration[6.0]
  def change
    add_reference :lessons, :classroom, null: false, foreign_key: true
  end
end
