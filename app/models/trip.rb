class Trip < ApplicationRecord
  belongs_to :user
  has_many :restaurants
  validates :city, :date, presence: true
end
