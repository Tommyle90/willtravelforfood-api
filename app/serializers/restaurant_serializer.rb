class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :telephone, :dish
end
