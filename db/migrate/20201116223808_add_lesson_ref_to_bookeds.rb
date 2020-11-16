class AddLessonRefToBookeds < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookeds, :lesson, null: false, foreign_key: true
  end
end
