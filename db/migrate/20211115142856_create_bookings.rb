class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :van, null: false, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :price_total
      t.string :status

      t.timestamps
    end
  end
end
