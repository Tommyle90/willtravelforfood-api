class Restaurant < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  validates :trip_id, :user_id, :name, :address, :telephone, :dish, presence: true
  validates :telephone, numericality: true,
                        length: { minimum: 8, maximum: 15 }
end
