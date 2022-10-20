class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.string :route_name
      t.integer :walk

      t.timestamps
    end
  end
end
