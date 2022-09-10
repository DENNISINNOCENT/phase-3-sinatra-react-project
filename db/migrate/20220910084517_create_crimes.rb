class CreateCrimes < ActiveRecord::Migration[6.1]
  def change
     create_table :crimes do |t|
      t.string :title
      t.string :description
      t.string :area
      t.string  :police_station_id
      t.timestamps
    end
  end
end
