class Trip < ApplicationRecord
  belongs_to :user
  validates :city, :date, :user_id, presence: true
end
