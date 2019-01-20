class TripSerializer < ActiveModel::Serializer
  attributes :id, :city, :date, :restaurants
  has_one :user
  has_many :restaurants
end
