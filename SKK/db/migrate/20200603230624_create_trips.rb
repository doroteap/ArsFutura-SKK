class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.datetime :departure
      t.datetime :arrival
      t.integer :available_seats
      t.references :operator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
