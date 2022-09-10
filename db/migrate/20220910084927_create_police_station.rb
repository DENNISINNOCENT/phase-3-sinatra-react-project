class CreatePoliceStation < ActiveRecord::Migration[6.1]
    def change
    create_table :police_stations do |t|
      t.string :name
      t.string :area
      t.timestamps
    end
  end
end
