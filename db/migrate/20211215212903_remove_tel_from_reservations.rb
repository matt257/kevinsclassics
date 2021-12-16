class RemoveTelFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :tel, :string
  end
end
