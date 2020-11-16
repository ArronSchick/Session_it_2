class AddProfileRefToBookeds < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookeds, :profile, null: false, foreign_key: true
  end
end
