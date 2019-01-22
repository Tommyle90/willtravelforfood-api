class Restaurant < ApplicationRecord
  belongs_to :trip
  validates :trip_id, :name, :address, :telephone, :dish, presence: true
  validates :telephone, numericality: true,
                        length: { minimum: 8, maximum: 15 }
end
