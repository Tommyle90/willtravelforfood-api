class Restaurant < ApplicationRecord
  belongs_to :user
  validates :name, :address, :telephone, :dish, :user_id, presence: true
end
