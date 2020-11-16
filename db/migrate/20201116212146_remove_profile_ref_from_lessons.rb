class RemoveProfileRefFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lessons, :profile, null: false, foreign_key: true
  end
end
