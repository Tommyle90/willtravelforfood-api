class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :telephone, :dish
  belongs_to :trip, serializer: TripSerializer
end
