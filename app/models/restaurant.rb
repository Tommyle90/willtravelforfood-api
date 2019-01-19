class Restaurant < ApplicationRecord
  belongs_to :user, :trip
  validates :name, :address, :telephone, :dish, presence: true
end
