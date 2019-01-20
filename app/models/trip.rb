class Trip < ApplicationRecord
  belongs_to :user
  has_many :restaurants
  validates :city, :date, :user_id, presence: true
end
