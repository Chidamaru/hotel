class AddCountToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :Count, :integer
  end
end
