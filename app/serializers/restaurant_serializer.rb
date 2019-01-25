class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :telephone, :dish
  has_one :trip, serializer: TripSerializer
  has_one :user, serializer: UserSerializer
end
