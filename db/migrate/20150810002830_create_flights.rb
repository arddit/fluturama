class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :adultCount
      t.integer :childCount
      t.integer :infantInLapCount
      t.integer :infantInSeatCount
      t.integer :seniorCount
      t.string :origin
      t.string :destination
      t.string :date
      t.integer :maxStops
      t.integer :maxConnectionDuration
      t.string :preferredCabin
      t.string :earliestTime
      t.string :latestTime
      t.string :permittedCarrier
      t.string :alliance
      t.string :prohibitedCarrier
      t.string :maxPrice
      t.string :saleCountry
      t.boolean :refundable
      t.integer :solutions

      t.timestamps null: false
    end
  end
end
