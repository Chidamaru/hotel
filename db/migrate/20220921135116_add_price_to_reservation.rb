class AddPriceToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :price, :bigint
  end
end
