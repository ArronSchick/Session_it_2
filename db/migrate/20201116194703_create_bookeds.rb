class CreateBookeds < ActiveRecord::Migration[6.0]
  def change
    create_table :bookeds do |t|
      t.boolean :booking

      t.timestamps
    end
  end
end
