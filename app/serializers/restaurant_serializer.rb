class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :telephone, :dish
  belongs_to :user, serializer: UserSerializer
end
