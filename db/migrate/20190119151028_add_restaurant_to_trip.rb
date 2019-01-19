class AddRestaurantToTrip < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :restaurant, foreign_key: true
  end
end
