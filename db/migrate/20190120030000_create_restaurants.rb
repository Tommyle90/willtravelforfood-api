class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.references :trip, foreign_key: true
      t.string :name
      t.string :address
      t.integer :telephone
      t.string :dish

      t.timestamps
    end
  end
end
