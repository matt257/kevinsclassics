class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone
      t.string :tel
      t.string :instagram

      t.timestamps
    end
  end
end
