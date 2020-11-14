class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :description
      t.string :date
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
