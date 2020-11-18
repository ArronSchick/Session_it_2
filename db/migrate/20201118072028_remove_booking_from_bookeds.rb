class RemoveBookingFromBookeds < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookeds, :booking, :boolean
  end
end
