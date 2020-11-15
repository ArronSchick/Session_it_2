class AddProfileRefToClassrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :classrooms, :profile, null: false, foreign_key: true
  end
end
