class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :starting_date
      t.datetime :end_date
      t.references :offering, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
