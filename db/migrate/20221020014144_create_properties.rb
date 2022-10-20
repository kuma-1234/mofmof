class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :price
      t.string :address
      t.integer :age
      t.text :note

      t.timestamps
    end
  end
end
