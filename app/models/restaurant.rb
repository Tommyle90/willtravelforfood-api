class Restaurant < ApplicationRecord
  belongs_to :trip
  validates :trip_id, :name, :address, :telephone, :dish, presence: true
end
