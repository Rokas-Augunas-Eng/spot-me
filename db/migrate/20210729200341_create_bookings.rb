class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gym, null: false, foreign_key: true
      t.datetime :booking_start
      t.datetime :booking_end

      t.timestamps
    end
  end
end
