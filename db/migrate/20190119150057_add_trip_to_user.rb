class AddTripToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :trip, foreign_key: true
  end
end
