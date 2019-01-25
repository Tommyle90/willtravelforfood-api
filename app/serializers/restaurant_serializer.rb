class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :telephone, :dish
  has_one :trip, serializer: TripSerializer
end
